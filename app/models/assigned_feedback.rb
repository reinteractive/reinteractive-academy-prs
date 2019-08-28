class AssignedFeedback < ApplicationRecord
  belongs_to :feedback, optional: true
  belongs_to :idea, optional: true
end
