class Staff < ApplicationRecord
  has_many :ideas
  # has_many :statuses
  belongs_to :status, required: false 
  

accepts_nested_attributes_for :status

end
