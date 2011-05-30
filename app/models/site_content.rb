class SiteContent < ActiveRecord::Base
  
  def self.get_by_text_key(key)
    find :first, :conditions => ['text_key = ?', key]
  end
  
end
