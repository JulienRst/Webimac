<?php

namespace Imac;

use Illuminate\Database\Eloquent\Model;

class Staff extends Model
{
    protected $fillable = [
        'main','name','role','description','mail','web_link','url_image'
    ];
}
