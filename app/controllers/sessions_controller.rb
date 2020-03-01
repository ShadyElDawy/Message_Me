class SessionsController < ApplicationController
	def new
		
	end 

	def create
		user = User.find_by(username: params[:session][:username]) #compare user input (params[][]) by users in database
		if user && user.authenticate(params[:session][:password])
			session[:user_id] = user.id #set session id user to user id that was found above
			flash[:success] = "You have successfully logged in"
			redirect_to root_path 

		else
			flash.now[:error] = "There was something wrong with your login information" #flash now shows message in same page not in the second page
			render 'new'
		end

	end 

	def destroy
		session[:user_id] = nil
		flash[:success] = "You have successfully Logged out"
		redirect_to login_path
	end 
end
