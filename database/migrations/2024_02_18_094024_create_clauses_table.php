<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('clauses', function (Blueprint $table) {
            $table->id();

            $table->unsignedBigInteger('room_type_id')->nullable();
            $table->foreign('room_type_id')
                ->references('id')
                ->on('room_types')
                ->onDelete('cascade')->nullable();

            $table->string('name');
            $table->string('description');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('clauses');
    }
};
