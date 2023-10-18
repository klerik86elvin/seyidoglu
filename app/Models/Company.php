<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use TCG\Voyager\Traits\Translatable;

class Company extends Model
{
    use HasFactory, Translatable;
    protected $translatable = ['name','title'];

    public function gallery()
    {
        return $this->hasMany(CompanyGallery::class);
    }
}
