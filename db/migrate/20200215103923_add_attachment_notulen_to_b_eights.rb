class AddAttachmentNotulenToBEights < ActiveRecord::Migration[5.2]
  def self.up
    change_table :b_eights do |t|
      t.attachment :notulen
    end
  end

  def self.down
    remove_attachment :b_eights, :notulen
  end
end
