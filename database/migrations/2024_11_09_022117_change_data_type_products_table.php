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
            // hay đổi độ dài name
            if (Schema::hasColumn('products','name')){
                $table->string('name')->nullable()->change();
            }
            // Thay đổi kiểu dữ liệu description
            if (Schema::hasColumn('products','description')){
                $table->mediumText('description')->change();
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
            // hay đổi độ dài name
            if (Schema::hasColumn('products','name')){
                $table->string('name', 255)->change();
            }
            // Thay đổi kiểu dữ liệu description
            if (Schema::hasColumn('products','description')){
                $table->text('description')->change();
            }
            
        }); 
    }
};
