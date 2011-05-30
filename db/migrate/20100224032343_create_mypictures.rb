class CreateMypictures < ActiveRecord::Migration
  def self.up
    create_table :mypictures do |t|
      t.string :caption
      t.string :photo_file_name
      t.string :photo_content_type
      t.integer :photo_file_size

      t.timestamps
    end
  end

  def self.down
    drop_table :mypictures
  end
end
