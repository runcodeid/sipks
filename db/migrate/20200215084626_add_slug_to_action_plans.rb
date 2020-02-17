class AddSlugToActionPlans < ActiveRecord::Migration[5.2]
  def change
    add_column :action_plans, :slug, :string
    add_index :action_plans, :slug, unique: true
  end
end
