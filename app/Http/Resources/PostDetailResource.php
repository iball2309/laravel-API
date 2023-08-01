<?php

namespace App\Http\Resources;

use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

class PostDetailResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @return array<string, mixed>
     */
    public function toArray(Request $request): array
    {
        return [
            'ID' => $this->id,
            'TITLE' => $this->title,
            'image' => $this->image,
            'CONTENT' => $this->news_content,
            'CREATED AT' => date_format($this->created_at, "Y/m/d H:i:s"),
            'Penulis' => $this->author,
            'penulis' => $this->whenLoaded('penulis'),
            'comments' => $this->whenLoaded('comments', function () {
                return collect($this->comments)->each(function ($comment) {
                    $comment->commentator;
                    return $comment;
                });
            }),
            'comment_total' => $this->whenLoaded('comments', function () {
                return $this->comments->count();
            })
        ];
    }
}
