class WelcomeController < ApplicationController
	def index
  	end

  	def login
  		redirect_to rooms_url
  	end
end
