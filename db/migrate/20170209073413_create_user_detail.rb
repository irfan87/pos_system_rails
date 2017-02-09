class CreateUserDetail < ActiveRecord::Migration[5.0]
  def change
    create_table :user_details do |t|
      t.string :shop_name
      t.string :registration_number
      t.string :shop_phone_number_1
      t.string :shop_phone_number_2
      t.text :shop_address
      t.references :user, foreign_key: true
    end
  end
end
