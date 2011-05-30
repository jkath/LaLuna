class Mypicture < ActiveRecord::Base
    
    has_attached_file :photo, :path => ":rails_root/public/system/:class/:id/:style.:extension",
                    :url => "/system/:class/:id/:style.:extension",
                    :default_url => "/images/missing.gif",
                    :styles => { :large => "500x500>",
                                 :medium => "200x200>",
                                 :thumb => "140x140>",
                                 :tiny => "40x40"
                     }

end
