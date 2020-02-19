class AddAttachmentLogoCityToCities < ActiveRecord::Migration[5.2]
  def self.up
    change_table :cities do |t|
      t.attachment :logo_city
    end
  end

  def self.down
    remove_attachment :cities, :logo_city
  end
end
