class Payment < ActiveRecord::Base
    validates :name, presence:true  
end
