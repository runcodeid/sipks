class AddDeletedAtToActionPlans < ActiveRecord::Migration[5.2]
  def change
    add_column :action_plans, :deleted_at, :datetime
    add_index :action_plans, :deleted_at
  end
end
