<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Buku_tamu extends Model
{
    /**
     * The database table used by the model.
     *
     * @var string
     */
    protected $table = 'buku_tamus';

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
    protected $fillable = ['nama', 'nip', 'skpd', 'alamat', 'no_telp', 'bidang_id','sudah_tanya'];

    public function SKPD()
       {
           return $this->belongsTo('App\Skpd', 'skpd', 'id');
       }   

       public function Bidang()
       {
           return $this->belongsTo('App\Bidang', 'bidang_id', 'id');
       }
}
