class RemoveOtherInfoToUser < ActiveRecord::Migration[5.0]
  def change
    remove_column :users, :phone_number, :string
    remove_column :users, :hp_number, :string
    remove_column :users, :shop_address, :text
  end
end
