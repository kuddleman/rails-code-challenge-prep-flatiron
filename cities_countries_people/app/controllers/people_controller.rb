class PeopleController < ApplicationController

  def index 

  end

  def show 

  end

  def new 
    @person = Person.new
  end

  def create 

  end

  def edit 

  end

  def update 

  end

  def destroy 

  end

end

private 

def people_params
  params.require(:person).permit(:name, :native_tongue, :gender)
end
