<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateBooksTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('books', function (Blueprint $table) {
            $table->id();
            $table->string('isbn', 17)->unique();
            $table->string('title');
            $table->unsignedSmallInteger('publication_year')->nullable();
            $table->string('cover_image')->nullable();
            $table->unsignedBigInteger('publisher_id')->nullable();
            $table->text('description')->nullable();
            //$table->unsignedBigInteger('category_id');

            //Add a publishers foreign key with on delete set null
            $table->foreign('publisher_id')
            ->references('id')
            ->on('publishers')
            ->onDelete('set null');
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
        Schema::dropIfExists('books');
    }
}
