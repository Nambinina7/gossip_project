class UserController < ApplicationController
  def show
  	id = params["id"]
  	@user = User.find(id)
  end

	def new
    @cities = City.all
    @user = User.new  
  end

  def create
      @cities = City.all
      first_name = params["first_name"]
      last_name = params["last_name"]
      email = params["email"]
      description = params["description"]
      age = params["age"]
      city_id = params['city_id']
      password = params["password"]
      password_confirmation = params["password_confirmation"]
     
      @user = User.new(first_name: first_name,
      last_name: last_name,
      email: email,
      description: description,
      age: age,
      password: password,
      password_confirmation: password_confirmation,
)
        @city = City.find(city_id)
        @user.city = @city
        @user.save
    if @user.save
      flash[:success] = "Vous êtes bien enregistré !"
      # log_in(@user)
      redirect_to gossips_path
    else
      render "new"
    end
  end
end
