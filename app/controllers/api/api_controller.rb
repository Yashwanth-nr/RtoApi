class Api::ApiController < ApplicationController
	before_action :check_access_token

	private 

	def check_access_token 
		if params[:access_token]  
			@user =User.find_by_access_token(params[:access_token])
			@user.reduce_credits if !@user.nil? && !@user.credits.zero?
		end
		return @user
	end
end