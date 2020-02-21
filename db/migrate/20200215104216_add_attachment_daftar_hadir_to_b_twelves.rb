class AddAttachmentDaftarHadirToBTwelves < ActiveRecord::Migration[5.2]
  def self.up
    change_table :b_twelves do |t|
      t.attachment :daftar_hadir
    end
  end

  def self.down
    remove_attachment :b_twelves, :daftar_hadir
  end
end
