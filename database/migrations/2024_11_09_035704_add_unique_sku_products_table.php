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
        // Tạo field + đánh index Unique
        Schema::table('products', function(Blueprint $table){
            if (!Schema::hasColumn('products','sku')){
                $table->string('sku',100)->unique();
            }
            if (Schema::hasColumn('products','name')){
                $table->unique('name');
            }
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('products', function(Blueprint $table){
            // Xoá field Sku
            if (Schema::hasColumn('products','sku')){
                $table->dropColumn('sku');
            }
            // Xoá index Unique
            if (Schema::hasColumn('products','name')){
                $table->dropUnique('products_name_unique');
            }
        });
    }
};
