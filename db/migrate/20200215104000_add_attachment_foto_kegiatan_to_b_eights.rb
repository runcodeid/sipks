class AddAttachmentFotoKegiatanToBEights < ActiveRecord::Migration[5.2]
  def self.up
    change_table :b_eights do |t|
      t.attachment :foto_kegiatan
    end
  end

  def self.down
    remove_attachment :b_eights, :foto_kegiatan
  end
end
