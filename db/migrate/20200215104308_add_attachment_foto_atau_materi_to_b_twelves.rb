class AddAttachmentFotoAtauMateriToBTwelves < ActiveRecord::Migration[5.2]
  def self.up
    change_table :b_twelves do |t|
      t.attachment :foto_atau_materi
    end
  end

  def self.down
    remove_attachment :b_twelves, :foto_atau_materi
  end
end
