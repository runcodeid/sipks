class AddAttachmentScanDocumentToBEights < ActiveRecord::Migration[5.2]
  def self.up
    change_table :b_eights do |t|
      t.attachment :scan_document
    end
  end

  def self.down
    remove_attachment :b_eights, :scan_document
  end
end
