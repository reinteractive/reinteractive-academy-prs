class Status < ApplicationRecord
  belongs_to :idea, required: false 
  # belongs_to :staff
  has_many :staffs

  enum stage: { planned: 0, release: 1, building: 2}

  accepts_nested_attributes_for :idea 
  # accepts_nested_attributes_for :staff
end
