class AddAttachmentScanDocumentToBTwelves < ActiveRecord::Migration[5.2]
  def self.up
    change_table :b_twelves do |t|
      t.attachment :scan_document
    end
  end

  def self.down
    remove_attachment :b_twelves, :scan_document
  end
end
