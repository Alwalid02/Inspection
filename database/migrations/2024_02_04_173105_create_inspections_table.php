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
        Schema::create('inspections', function (Blueprint $table) {
            $table->id();

            $table->unsignedBigInteger('company_id')->nullable();
            $table->foreign('company_id')
                ->references('id')
                ->on('companies')
                ->onDelete('cascade')->nullable();

            $table->unsignedBigInteger('property_id')->nullable();
            $table->foreign('property_id')
                ->references('id')
                ->on('properties')
                ->onDelete('cascade')->nullable();

            $table->unsignedBigInteger('floor_id')->nullable();
            $table->foreign('floor_id')
                ->references('id')
                ->on('floors')
                ->onDelete('cascade')->nullable();
                
            $table->string('title');
            $table->text('note');
            $table->string('img');
            $table->integer('rate');

            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('inspections');
    }
};
