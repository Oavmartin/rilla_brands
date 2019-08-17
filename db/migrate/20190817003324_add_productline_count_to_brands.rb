class AddProductlineCountToBrands < ActiveRecord::Migration[5.1]
  def change
    add_column :brands, :productlines_count, :integer
  end
end
