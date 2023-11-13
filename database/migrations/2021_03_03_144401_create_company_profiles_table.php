<?php

use App\Models\CompanyProfile;
use Faker\Provider\ar_JO\Company;
use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateCompanyProfilesTable  extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('company_profiles', function (Blueprint $table) {
            $table->id();
            $table->string('name');
            $table->string('phone');
            $table->string('email');
            $table->string('address');
            $table->text('about')->nullable();
            $table->string('slogan')->nullable();
            $table->string('facebook')->nullable();
            $table->string('twitter')->nullable();
            $table->string('linkedin')->nullable();
            $table->string('instagram')->nullable();
            $table->string('logo')->nullable();
            $table->timestamps();
        });

        // Create a default one 
        $company = new CompanyProfile();
        $company->name = 'Default name'; 
        $company->email = 'test@gmail.com'; 
        $company->phone = '0170000000*'; 
        $company->address = 'Default address'; 
        $company->save();
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('company_profiles');
    }
}
