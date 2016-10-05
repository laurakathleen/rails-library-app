class SessionsController < ApplicationController

  def new
  	@grandma = Grandma.new
  end

  def create
  	grandma_params = params.require(:grandma).permit(:email, :password)
  	@grandma = Grandma.confirm(grandma_params)

  	if @grandma
  	  login(@grandma)
  	  redirect_to @grandma
  	else
   	  redirect_to login_path
   	end
  end

end
