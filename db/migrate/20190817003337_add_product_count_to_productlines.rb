class AddProductCountToProductlines < ActiveRecord::Migration[5.1]
  def change
    add_column :productlines, :products_count, :integer
  end
end
