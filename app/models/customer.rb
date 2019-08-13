class Customer < ApplicationRecord
  
  belongs_to :idea, optional: true


  accepts_nested_attributes_for :idea
  
end
