class AddBrandCountToOrganizations < ActiveRecord::Migration[5.1]
  def change
    add_column :organizations, :brands_count, :integer
  end
end
