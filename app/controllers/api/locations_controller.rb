class Api::LocationsController < ApplicationController
  def index

  	if params[:name]
  		@location = Location.find_by_name(params[:name].capitalize)
  	end




  end
end
