<?php

namespace App\Http\Resources;

use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

class PostResource extends JsonResource
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
            'CONTENT' => $this->news_content,
            'CREATED AT' => date_format($this->created_at, "Y/m/d H:i:s")
        ];
    }
}
