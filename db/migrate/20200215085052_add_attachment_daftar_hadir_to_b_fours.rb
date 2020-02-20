class AddAttachmentDaftarHadirToBFours < ActiveRecord::Migration[5.2]
  def self.up
    change_table :b_fours do |t|
      t.attachment :daftar_hadir
    end
  end

  def self.down
    remove_attachment :b_fours, :daftar_hadir
  end
end
