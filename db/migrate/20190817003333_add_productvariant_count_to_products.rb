class AddProductvariantCountToProducts < ActiveRecord::Migration[5.1]
  def change
    add_column :products, :productvariants_count, :integer
  end
end
