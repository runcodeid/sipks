class AddAttachmentNotulenToBFours < ActiveRecord::Migration[5.2]
  def self.up
    change_table :b_fours do |t|
      t.attachment :notulen
    end
  end

  def self.down
    remove_attachment :b_fours, :notulen
  end
end
