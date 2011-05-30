class ItemPhoto < ActiveRecord::Base
  
    belongs_to :item
    
    has_attached_file :photo, :path => ":rails_root/public/system/:class/:id/:style.:extension",
                    :url => "/system/:class/:id/:style.:extension",
                    :default_url => "/images/missing.gif",
                    :styles => { :large => "500x500>",
                                 :medium => "200x200>",
                                 :thumb => "140x140>",
                                 :tiny => "40x40"
                     }
  
  #validates_attachment_presence :photo, :message => ", Must Upload A Valid Image File"
  
  def self.primary_photo(itemid)
    p = find :first, :conditions => ['item_id = ? and is_primary = ?', itemid, true]
    p = ItemPhoto.new if p == nil
    return p
  end
  
end
