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
        Schema::create('companies', function (Blueprint $table) {
            $table->id();
            $table->string('name');
            $table->string('short_name')->nullable()->default(NULL);
            $table->bigInteger('merchant')->nullable()->default(NULL);
            $table->string('email')->nullable()->default(NULL);
            $table->string('phone')->nullable()->default(NULL);
            $table->string('website')->nullable()->default(NULL);
            $table->string('light_logo')->nullable()->default(NULL);
            $table->string('dark_logo')->nullable()->default(NULL);
            $table->string('small_dark_logo')->nullable()->default(NULL);
            $table->string('small_light_logo')->nullable()->default(NULL);
            $table->string('address', 1000)->nullable()->default(NULL);
            $table->string('app_layout', 10)->default('sidebar');
            $table->string('left_sidebar_theme', 20)->default("dark");
            $table->string('primary_color', 20)->default("#1890ff");
            $table->string('date_format', 20)->default("DD-MM-YYYY");
            $table->string('time_format', 20)->default("hh:mm a");
            $table->boolean('auto_detect_timezone')->default(true); // Allow Browser To Auto Detect timezone For Logged In User
            $table->string('timezone')->default("Asia/Kolkata");
            $table->string('session_driver', 20)->default("file");
            $table->boolean('app_debug')->default(false);
            $table->boolean('update_app_notification')->default(true);
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('companies');
    }
};
