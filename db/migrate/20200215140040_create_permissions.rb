class CreatePermissions < ActiveRecord::Migration[5.2]
  def change
    create_table :permissions do |t|
      t.string :name
      t.string :resource
      t.string :action
      t.text :description
      t.boolean :page
      t.text :path

      t.timestamps
    end
  end
end
