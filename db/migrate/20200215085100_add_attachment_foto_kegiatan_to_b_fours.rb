class AddAttachmentFotoKegiatanToBFours < ActiveRecord::Migration[5.2]
  def self.up
    change_table :b_fours do |t|
      t.attachment :foto_kegiatan
    end
  end

  def self.down
    remove_attachment :b_fours, :foto_kegiatan
  end
end
