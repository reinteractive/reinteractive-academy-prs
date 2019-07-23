# frozen_string_literal: true

class Idea < ApplicationRecord
  has_many :staffs
  accepts_nested_attributes_for :staffs

  # before_save :handle_similars
  # def handle_similars
  #   self.similar_ids = self.similar_ids.select(&:present?).join(';')
  #   # .select(&:present?) is necessary to avoid empty objects to be stored
  # end

  # def similars
  #   self.class.find(self.similar_ids.split(';'))
  # end
end
