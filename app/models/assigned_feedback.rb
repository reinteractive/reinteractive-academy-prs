class AssignedFeedback < ApplicationRecord
  belongs_to :feedback
  belongs_to :idea
end
