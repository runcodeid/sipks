class CreateBTwelves < ActiveRecord::Migration[5.2]
  def change
    create_table :b_twelves do |t|
      t.references :action_plan, foreign_key: true

      t.timestamps
    end
  end
end
