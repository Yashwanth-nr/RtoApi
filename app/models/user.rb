class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  before_create :generate_access_token



  def reduce_credits
  	self.update_attributes(credits: self.credits - 1)
  end

  private
  
  def generate_access_token
  	self.access_token = SecureRandom.hex
  end


end
