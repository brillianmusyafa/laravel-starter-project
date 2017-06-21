<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateApbdsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('apbds', function(Blueprint $table) {
            $table->increments('id');
            $table->string('nama');
            $table->integer('tahun');
            $table->string('file');
            $table->string('no_tanggal');
            $table->string('type');
            $table->integer('user_id');
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
        Schema::drop('apbds');
    }
}
