<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateRezervesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('rezerves', function (Blueprint $table) {
            $table->id()->autoIncrement();
            $table->integer('user_id');
            $table->integer('hotel_id');
            $table->integer('room_id');
            $table->string('name',50)->nullable();
            $table->string('surname',50)->nullable();
            $table->string('email')->nullable();
            $table->string('phone')->nullable();
            $table->float('total')->nullable();
            $table->datetime('checkin')->nullable();
            $table->datetime('checkout')->nullable();
            $table->integer('days')->nullable();
            $table->string('IP',20)->nullable();
            $table->string('note',200)->nullable();
            $table->string('status',5)->default('New');
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
        Schema::dropIfExists('rezerves');
    }
}
