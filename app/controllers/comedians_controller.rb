class ComediansController < ApplicationController
  def index
    if params[:age].nil?
      @comedians = Comedian.all
    else
      @comedians = Comedian.find_age(params[:age])
    end
  end

  def new
  end

  def create
    Comedian.create(comedian_params)
    redirect_to "/comedians"
  end

  private
  def comedian_params
    params.require(:comedian).permit(:name, :age, :hometown)
  end
end
