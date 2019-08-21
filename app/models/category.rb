class Category < ApplicationRecord
  has_many :idea_categories
  has_many :ideas, through: :idea_categories
  

  accepts_nested_attributes_for :ideas

end
