class AddAttachmentImagesToPosts < ActiveRecord::Migration
  def self.up
    change_table :posts do |t|
      t.attachment :images
    end
  end

  def self.down
    remove_attachment :posts, :images
  end
end
