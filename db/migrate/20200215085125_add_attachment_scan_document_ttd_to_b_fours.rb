class AddAttachmentScanDocumentTtdToBFours < ActiveRecord::Migration[5.2]
  def self.up
    change_table :b_fours do |t|
      t.attachment :scan_document_ttd
    end
  end

  def self.down
    remove_attachment :b_fours, :scan_document_ttd
  end
end
