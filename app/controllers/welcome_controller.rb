class WelcomeController < ApplicationController
	def index
  	end

  	def login
  		cookies[:email] = params[:email]
  		cookies[:password] = params[:password]
  		if params[:email] == "admin" && params[:password] == "123456"
  			redirect_to schools_url
  		else
  			flash[:notice] = "帳號或密碼錯誤"
  			redirect_to root_url
  		end
  	end
end
