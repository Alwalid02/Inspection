<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Company extends Model
{
    use HasFactory;

    protected $fillable = [

        
        'name', 'short_name', 'merchant', 'email', 'phone', 'website', 'light_logo', 'dark_logo', 'small_dark_logo', 'small_light_logo', 'address', 'app_layout', 'rtl', 'mysqldump_command', 'shortcut_menus', 'currency_id', 'warehouse_id', 'left_sidebar_theme', 'primary_color', 'date_format', 'time_format', 'auto_detect_timezone', 'timezone', 'session_driver', 'app_debug', 'update_app_notification', 'created_at', 'updated_at', 'login_image', 'stripe_id', 'card_brand', 'card_last_four', 'trial_ends_at', 'subscription_plan_id', 'package_type', 'licence_expire_on', 'is_global', 'admin_id', 'status', 'total_users', 'email_verification_code', 'verified', 'white_label_completed'
    ];

    protected $dates = ['delete_at'];


    public function users(){
        return $this->hasMany(User::class, 'company_id');
    }
    
}
