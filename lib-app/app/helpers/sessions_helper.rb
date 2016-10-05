module SessionsHelper

	def login(grandma)
	  session[:grandma_id] = grandma.id
	  @current_grandma = grandma
	end

	def current_grandma
	  @current_grandma ||= Grandma.find_by_id(session[:grandma_id])
	end
end
