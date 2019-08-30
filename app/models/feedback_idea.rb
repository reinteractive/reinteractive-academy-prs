class FeedbackIdea < ApplicationRecord
  belongs_to :feedback
  belongs_to :idea
end
