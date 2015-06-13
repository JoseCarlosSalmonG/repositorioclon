class Course < ActiveRecord::Base
    
    
  has_attached_file :picture,
 
                    styles:{medium:"300x300>",thumb: "100x100>"},

                      default_url: "/images/:style/missing.png"

  validates :picture, attachment_presence:true, presence:true

  
  validates_attachment :picture,

                        content_type: {

                          content_type: ["image/jpeg", "image/png","image/gif"]}      
end
