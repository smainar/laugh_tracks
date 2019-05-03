class ComediansController < ApplicationController
  def index
    @comedians = Comedian.all
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
