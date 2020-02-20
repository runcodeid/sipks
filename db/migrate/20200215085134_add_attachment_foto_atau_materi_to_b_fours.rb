class AddAttachmentFotoAtauMateriToBFours < ActiveRecord::Migration[5.2]
  def self.up
    change_table :b_fours do |t|
      t.attachment :foto_atau_materi
    end
  end

  def self.down
    remove_attachment :b_fours, :foto_atau_materi
  end
end
