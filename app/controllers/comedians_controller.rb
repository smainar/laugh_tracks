class ComediansController < ApplicationController
  def index
    if params[:age]
      @comedians = Comedian.find_age(params[:age])
    else
      @comedians = Comedian.all
    end
    @average_age = @comedians.average_age
    @unique_cities = @comedians.unique_cities
  end

  def new
    @comedian = Comedian.new
  end

  def create
    comedian = Comedian.new(comedian_params)
    if comedian.save
      redirect_to "/comedians"
    end
  end

  def average_age
  end

  private
  def comedian_params
    params.require(:comedian).permit(:name, :age, :hometown)
  end
end
