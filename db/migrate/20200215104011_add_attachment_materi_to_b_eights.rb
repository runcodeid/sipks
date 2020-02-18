class AddAttachmentMateriToBEights < ActiveRecord::Migration[5.2]
  def self.up
    change_table :b_eights do |t|
      t.attachment :materi
    end
  end

  def self.down
    remove_attachment :b_eights, :materi
  end
end
