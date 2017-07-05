class Api::StatesController < Api::ApiController
  
  def index
	if !@user.nil?
		
  			if params[:name] && !@user.credits.zero?
  				@state = State.find_by_name(params[:name].capitalize)
  			end
	end
  end
end