# frozen_string_literal: true

class Idea < ApplicationRecord
  belongs_to :staff, optional: true
  
  has_many :customers
  has_many :idea_statuses
  has_many :statuses, through: :idea_statuses
  
  has_many :idea_categories
  has_many :categories, through: :idea_categories

  has_many :assignedfeedbacks
  has_many :feedbacks, through: :assignedfeedbacks

  has_many :feedback_ideas
  has_many :feedbacks, through: :feedback_ideas


  def current_status
    statuses.order(:created_at).last&.stage
  end

  # scope :for_statuses, ->(stage) { where(stage: statuses).order('updated_at ASC') }

  accepts_nested_attributes_for :statuses
  accepts_nested_attributes_for :staff
  accepts_nested_attributes_for :categories
  accepts_nested_attributes_for :feedbacks
end
