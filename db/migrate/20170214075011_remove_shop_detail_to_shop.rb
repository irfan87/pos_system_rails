class RemoveShopDetailToShop < ActiveRecord::Migration[5.0]
  def change
    remove_column :shops, :registration_number, :string
  end
end
