class RenameUserDetailsTable < ActiveRecord::Migration[5.0]
  def change
  	rename_table :user_details, :shops
  end
end
