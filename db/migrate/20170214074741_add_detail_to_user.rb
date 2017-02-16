class AddDetailToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :ic_number, :string
    add_column :users, :gender, :string
    add_column :users, :registration_number, :string
    add_column :users, :main_shop_name, :string
    add_column :users, :main_shop_address, :text
    add_column :users, :main_shop_phone_1, :string
    add_column :users, :main_shop_phone_2, :string
  end
end
