class AddAttachmentDaftarHadirToBEights < ActiveRecord::Migration[5.2]
  def self.up
    change_table :b_eights do |t|
      t.attachment :daftar_hadir
    end
  end

  def self.down
    remove_attachment :b_eights, :daftar_hadir
  end
end
