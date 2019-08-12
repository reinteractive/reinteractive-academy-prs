class Status < ApplicationRecord
 
  has_many :staffs
  has_many :idea_statuses
  has_many :ideas, through: :idea_statuses

  enum stage: { planned: 0, release: 1, building: 2}

  accepts_nested_attributes_for :ideas
  # accepts_nested_attributes_for :staff
end
