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

            $table->unsignedBigInteger('from_id')->nullable();
            $table->foreign('form_id')
                ->references('id')
                ->on('forms')
                ->onDelete('cascade')->nullable();

            $table->unsignedBigInteger('property_id')->nullable();
            $table->foreign('property_id')
                ->references('id')
                ->on('properties')
                ->onDelete('cascade')->nullable();

            $table->unsignedBigInteger('room_type_id')->nullable();
            $table->foreign('room_type_id')
                ->references('id')
                ->on('room_types')
                ->onDelete('cascade')->nullable();
            
            $table->unsignedBigInteger('room_id')->nullable();
            $table->foreign('room_id')
                ->references('id')
                ->on('rooms')
                ->onDelete('cascade')->nullable();

            $table->unsignedBigInteger('clause_id')->nullable();
            $table->foreign('clause_id')
                ->references('id')
                ->on('clauses')
                ->onDelete('cascade')->nullable();
                    
            $table->string('title');
            $table->string('statuse');
            $table->text('note');           

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
