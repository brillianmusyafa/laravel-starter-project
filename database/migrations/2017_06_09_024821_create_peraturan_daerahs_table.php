<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreatePeraturanDaerahsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('peraturan_daerahs', function(Blueprint $table) {
            $table->increments('id');
            $table->string('name');
            $table->string('file');
            $table->string('tahun');
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
        Schema::drop('peraturan_daerahs');
    }
}
