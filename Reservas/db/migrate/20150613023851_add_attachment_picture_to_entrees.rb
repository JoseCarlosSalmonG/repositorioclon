class AddAttachmentPictureToEntrees < ActiveRecord::Migration
  def self.up
    change_table :entrees do |t|
      t.attachment :picture
    end
  end

  def self.down
    remove_attachment :entrees, :picture
  end
end
