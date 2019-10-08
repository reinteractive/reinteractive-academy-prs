class Customer < ApplicationRecord
  belongs_to :idea, optional: true
  has_many :feedbacks

  


 
  

  accepts_nested_attributes_for :idea
   
   
  
end
