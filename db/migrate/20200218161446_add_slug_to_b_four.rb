class AddSlugToBFour < ActiveRecord::Migration[5.2]
  def change
    add_column :b_fours, :slug, :string
    add_index :b_fours, :slug, unique: true
  end
end
