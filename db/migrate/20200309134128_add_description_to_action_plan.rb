class AddDescriptionToActionPlan < ActiveRecord::Migration[5.2]
  def change
    add_column :action_plans, :description, :text
  end
end
