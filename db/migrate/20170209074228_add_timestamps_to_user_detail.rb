class AddTimestampsToUserDetail < ActiveRecord::Migration[5.0]
  def change
  	add_column :user_details, :created_at, :datetime
  	add_column :user_details, :updated_at, :datetime
  end
end
