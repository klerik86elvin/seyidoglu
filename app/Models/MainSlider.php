<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use TCG\Voyager\Traits\Translatable;

class MainSlider extends Model
{
    use HasFactory,Translatable;
    protected $table = 'main_slireds';
    protected $translatable  = ['title'];
}
