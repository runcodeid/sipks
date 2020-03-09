class AddResponsibleToActionPlan < ActiveRecord::Migration[5.2]
  def change
    add_column :action_plans, :responsible, :text
  end
end
