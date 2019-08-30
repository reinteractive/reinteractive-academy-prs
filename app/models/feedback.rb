class Feedback < ApplicationRecord
  has_many :assigned_feedbacks
  has_many :ideas, through: :assigned_feedbacks
  
  has_many :feedback_ideas
  has_many :ideas, through: :feedback_ideas

  belongs_to :customer, optional: true

  accepts_nested_attributes_for :ideas
  accepts_nested_attributes_for :customer
  
end
