<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateProjectStudentsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('project_students', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('id_project')->unsigned()->references('id')->on('projects');
            $table->integer('id_student')->unsigned()->references('id')->on('students');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::drop('project_students');
    }
}