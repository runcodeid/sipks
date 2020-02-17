class AddDeletedAtToBEights < ActiveRecord::Migration[5.2]
  def change
    add_column :b_eights, :deleted_at, :datetime
    add_index :b_eights, :deleted_at
  end
end
