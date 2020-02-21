class CreateActionPlans < ActiveRecord::Migration[5.2]
  def change
    create_table :action_plans do |t|
      t.references :city, foreign_key: true
      t.references :year, foreign_key: true
      t.string :code_action_plans
      t.string :action_plan

      t.timestamps
    end
  end
end
