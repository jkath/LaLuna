class Item < ActiveRecord::Base
  
  has_many :item_photos
  
  def self.get_carousel_items
    find :all, :conditions => ['is_active = ? and show_in_slideshow = ?', true, true]
  end
  
end
