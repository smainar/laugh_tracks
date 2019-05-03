class ComediansController < ApplicationController
  def index
    # @average_age = Comedian.average_age
    if params[:age].nil?
      @comedians = Comedian.all
    else
      @comedians = Comedian.find_age(params[:age])
    end
    @average_age = @comedians.average_age
  end

  def new
    @comedian = Comedian.new
  end

  def create
    Comedian.create(comedian_params)
    redirect_to "/comedians"
  end

  def average_age
  end

  private
  def comedian_params
    params.require(:comedian).permit(:name, :age, :hometown)
  end
end
