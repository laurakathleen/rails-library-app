class UsersController < ApplicationController
  
  before_action :logged_in?, only: [:show]

  def index
  	@users = User.all
  end

  def new
  	@user = User.new
  end

  def create
  	@user = User.create(user_params)
  	redirect_to users_path
  end

  def show
  	@user = User.find(params[:id])
    render :show
  end

  private
  def user_params
  	params.require(:user).permit(:first_name, :last_name, :email, :password)
  end

end
