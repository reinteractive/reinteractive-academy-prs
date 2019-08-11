# frozen_string_literal: true

class Idea < ApplicationRecord
  belongs_to :staff, optional: true
  belongs_to :customer, optional: true
  has_many :statuses

  def current_status
    statuses.order(:created_at).last&.stage
  end

  # scope :for_statuses, ->(stage) { where(stage: statuses).order('updated_at ASC') }

  accepts_nested_attributes_for :staff
  accepts_nested_attributes_for :customer
end
