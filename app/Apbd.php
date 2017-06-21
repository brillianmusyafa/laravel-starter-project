<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Apbd extends Model
{
    /**
     * The database table used by the model.
     *
     * @var string
     */
    protected $table = 'apbds';

    /**
    * The database primary key value.
    *
    * @var string
    */
    protected $primaryKey = 'id';

    /**
     * Attributes that should be mass-assignable.
     *
     * @var array
     */
    protected $fillable = ['nama', 'tahun', 'file', 'no_tanggal', 'type', 'user_id'];

    
}
