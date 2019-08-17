class CreateProductvariants < ActiveRecord::Migration[5.1]
  def change
    create_table :productvariants do |t|
      t.integer :product_id
      t.string :characteristics

      t.timestamps
    end
  end
end
