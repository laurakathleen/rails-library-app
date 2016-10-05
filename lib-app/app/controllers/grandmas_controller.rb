class GrandmasController < ApplicationController

  def index
  	@grandmas = Grandma.all
  end

  def new
  	@grandma = Grandma.new
  end

  def create
  	@grandma = Grandma.create(grandma_params)
  	redirect_to root_path
  end

  def show
  	@grandma = Grandma.find_by_id(params[:id])
  end

  private

  def grandma_params
  	params.require(:grandma).permit(:first_name, :last_name, :email, :password)
  end
end
