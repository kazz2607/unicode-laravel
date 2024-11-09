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
        //
        Schema::table('products', function(Blueprint $table){
            // Thay đổi tên column D
            if (Schema::hasColumn('products','status')){
                $table->renameColumn('status','active');
            }
        }); 
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        //
        Schema::table('products', function(Blueprint $table){
            // Thay đổi tên column 
            if (Schema::hasColumn('products','active')){
                $table->renameColumn('active','status');
            }
        }); 
    }
};
