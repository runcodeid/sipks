class AddAttachmentFotoKegiatanToBTwelves < ActiveRecord::Migration[5.2]
  def self.up
    change_table :b_twelves do |t|
      t.attachment :foto_kegiatan
    end
  end

  def self.down
    remove_attachment :b_twelves, :foto_kegiatan
  end
end
