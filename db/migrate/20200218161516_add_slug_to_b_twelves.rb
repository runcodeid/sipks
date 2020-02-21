class AddSlugToBTwelves < ActiveRecord::Migration[5.2]
  def change
    add_column :b_twelves, :slug, :string
    add_index :b_twelves, :slug, unique: true
  end
end
