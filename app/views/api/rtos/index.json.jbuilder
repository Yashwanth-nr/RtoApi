
json.extract! @rto,:code,:vehicle_number,:address,:phone

json.state @rto.state,:name,:transport_code

json.locations @rto.locations, :name

=begin
if @user.nil?
	node(:error){"Access denied"}
elsif @user.credits.zero?
	node(:msg){"You have run out of credits"}
else

unless @rto.nil?  #if !@state.nil
object @rto

attributes :code,:vehicle_number, :address,:phone 

child :state do
	attributes :name, :transport_code
end

child :locations do
	attributes :name
end


else

	node(:error) {"#{params[:vehicle_number]} not found"}

end
end


=end