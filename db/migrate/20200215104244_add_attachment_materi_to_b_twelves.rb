class AddAttachmentMateriToBTwelves < ActiveRecord::Migration[5.2]
  def self.up
    change_table :b_twelves do |t|
      t.attachment :materi
    end
  end

  def self.down
    remove_attachment :b_twelves, :materi
  end
end
