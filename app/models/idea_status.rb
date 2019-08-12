class IdeaStatus < ApplicationRecord
  belongs_to :idea, optional: true
  belongs_to :status, optional: true


   
end
