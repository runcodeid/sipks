class AddDeletedAtToBFours < ActiveRecord::Migration[5.2]
  def change
    add_column :b_fours, :deleted_at, :datetime
    add_index :b_fours, :deleted_at
  end
end
