class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.integer :productline_id
      t.string :name
      t.string :characteristics

      t.timestamps
    end
  end
end
