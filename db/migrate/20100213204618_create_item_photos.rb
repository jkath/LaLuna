class CreateItemPhotos < ActiveRecord::Migration
  def self.up
    create_table :item_photos do |t|
      t.integer :item_id
      t.boolean :is_primary
      t.string :photo_file_name
      t.string :photo_file_content
      t.integer :photo_file_size
      t.string :caption

      t.timestamps
    end
  end

  def self.down
    drop_table :item_photos
  end
end
