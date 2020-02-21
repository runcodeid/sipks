class AddSlugToBEight < ActiveRecord::Migration[5.2]
  def change
    add_column :b_eights, :slug, :string
    add_index :b_eights, :slug, unique: true
  end
end
