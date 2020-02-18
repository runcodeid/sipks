class AddSlugToPermissions < ActiveRecord::Migration[5.2]
  def change
    add_column :permissions, :slug, :string
    add_index :permissions, :slug, unique: true
  end
end
