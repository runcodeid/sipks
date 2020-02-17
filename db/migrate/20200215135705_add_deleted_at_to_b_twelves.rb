class AddDeletedAtToBTwelves < ActiveRecord::Migration[5.2]
  def change
    add_column :b_twelves, :deleted_at, :datetime
    add_index :b_twelves, :deleted_at
  end
end
