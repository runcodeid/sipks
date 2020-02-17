class AddAttachmentMateriToBFours < ActiveRecord::Migration[5.2]
  def self.up
    change_table :b_fours do |t|
      t.attachment :materi
    end
  end

  def self.down
    remove_attachment :b_fours, :materi
  end
end
