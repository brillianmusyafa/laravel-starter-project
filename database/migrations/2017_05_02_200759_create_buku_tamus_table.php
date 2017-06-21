<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateBukuTamusTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('buku_tamus', function(Blueprint $table) {
            $table->increments('id');
            $table->string('nama');
            $table->string('nip');
            $table->string('skpd');
            $table->string('alamat');
            $table->string('no_telp');
            $table->string('lampiran')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::drop('buku_tamus');
    }
}
