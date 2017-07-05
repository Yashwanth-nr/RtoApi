class AddCreditsToUsers < ActiveRecord::Migration
  def change
  	add_column :users, :credits, :interger, default: 100 
  end
end
