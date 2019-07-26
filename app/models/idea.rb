# frozen_string_literal: true

class Idea < ApplicationRecord
  belongs_to :staff, optional: true

  
  accepts_nested_attributes_for :staff

end
