class AddAttachmentNotulenToBTwelves < ActiveRecord::Migration[5.2]
  def self.up
    change_table :b_twelves do |t|
      t.attachment :notulen
    end
  end

  def self.down
    remove_attachment :b_twelves, :notulen
  end
end
