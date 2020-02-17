class AddDeletedAtToYears < ActiveRecord::Migration[5.2]
  def change
    add_column :years, :deleted_at, :datetime
    add_index :years, :deleted_at
  end
end
