class CountriesController < ApplicationController
  def index 
    @countries = Country.all
  end

  def new
    @country = Country.new
  end

  def show 
    @country = Country.find(params[:id])
  end

  # def create 
  #   @country = Country.create(country_params)

  #   if @country.valid?
  #     @country.save
  #     redirect_to countries_path(@country)
  #   else
  #     #if @country is invalid,
  #     # hold on to @country, because it is
  #     #now full of usefull error messages.
  #     # So re-render the :new page which will
  #     # display those error messages.
  #     render :new
  #   end
  # end

  #refactor create method to display errors in view, part 1 of 2
  # part 2 is the edit form
  def create 
    @country = Country.new(post_params)

    if @post.save
      redirect country_path(@post)
    else
      render :new
    end
  end

  def edit 
    @country = Country.find(params[:id])
  end

  def update
    @country = Country.find(params[:id])
    @country.update(country_params)
    redirect_to countries_path(@country)
  end

  def destroy
   @country = Country.find(params[:id])
   @country.destroy
   redirect_to countries_path
  end 
end

 private 

 def country_params 
  params.require(:country).permit(:name, :continent)
 end

