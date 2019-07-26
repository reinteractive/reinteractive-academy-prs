# frozen_string_literal: true

class Idea < ApplicationRecord
  belongs_to :staff, optional: true
  has_many :statuses

  
  accepts_nested_attributes_for :staff
  

end
