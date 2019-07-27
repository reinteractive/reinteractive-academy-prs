# frozen_string_literal: true

class Idea < ApplicationRecord
  belongs_to :staff, optional: true
  belongs_to :customer, optional: true
  has_many :statuses

  
  accepts_nested_attributes_for :staff
  accepts_nested_attributes_for :customer
  

end
