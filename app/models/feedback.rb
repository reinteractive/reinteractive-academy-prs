class Feedback < ApplicationRecord
  has_many :assigned_feedbacks
  has_many :ideas, through: :assigned_feedbacks

  accepts_nested_attributes_for :ideas
end
