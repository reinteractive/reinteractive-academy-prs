# frozen_string_literal: true

class Feedback < ApplicationRecord
  has_many :assigned_feedbacks
  has_many :ideas, through: :assigned_feedbacks

  has_many :feedback_ideas
  has_many :ideas, through: :feedback_ideas

  belongs_to :customer, optional: true

  accepts_nested_attributes_for :ideas
  accepts_nested_attributes_for :customer

  # before_create :check_persisted

  private

  # def check_persisted
  #   @feedback = Feedback.last
  #   if @feedback.customer.email.present?
  #     # && customer.datetime.persisted?
  #     redirect_to controller: feedback, action: "index"
  #   else flash 'confirm your email'
  #   end
  # end
end



