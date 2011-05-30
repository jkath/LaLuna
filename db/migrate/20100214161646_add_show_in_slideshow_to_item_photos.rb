class AddShowInSlideshowToItemPhotos < ActiveRecord::Migration
  def self.up
    add_column :item_photos, :show_in_slideshow, :boolean, :default => 1
  end

  def self.down
    remove_column :item_photos, :show_in_slideshow
  end
end
