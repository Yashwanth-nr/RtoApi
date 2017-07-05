class Api::RtosController < Api::ApiController
  def index
  	if !@user.nil?

  		if params[:vehicle_number] && !@user.credits.zero?
  			@rto = Rto.find_by_vehicle_number(params[:vehicle_number])
  		end
	end
  end

end
