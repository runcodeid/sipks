class AddSlugToYears < ActiveRecord::Migration[5.2]
  def change
    add_column :years, :slug, :string
    add_index :years, :slug, unique: true
  end
end
