class AddAttachmentImageToProperties < ActiveRecord::Migration[5.1]
  def self.up
    change_table :users_properties do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :users_properties, :image
  end
end
