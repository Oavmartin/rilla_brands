class CreateProductlines < ActiveRecord::Migration[5.1]
  def change
    create_table :productlines do |t|
      t.integer :brand_id
      t.string :name
      t.string :characteristics

      t.timestamps
    end
  end
end
