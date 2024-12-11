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
        Schema::table('mappings', function (Blueprint $table) {
            $table->string('contact')->nullable()->after('principle');
            $table->string('district')->nullable()->after('contact');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('mappings', function (Blueprint $table) {
            $table->dropColumn('contact');
            $table->dropColumn('district');
        });
    }
};
