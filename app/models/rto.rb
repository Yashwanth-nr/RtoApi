class Rto < ActiveRecord::Base

	has_many :locations

	belongs_to :state
end
