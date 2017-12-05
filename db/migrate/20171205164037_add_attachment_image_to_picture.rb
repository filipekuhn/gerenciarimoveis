class AddAttachmentImageToPicture < ActiveRecord::Migration[5.1]
  def change
    create_table :pictures do |t|
      t.attachment :image
      t.references :properties, foreign_key: true

      t.timestamps
    end
  end
end
