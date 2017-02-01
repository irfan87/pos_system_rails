class AddOtherInfoToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :phone_number, :string
    add_column :users, :hp_number, :string
    add_column :users, :shop_address, :text
  end
end
