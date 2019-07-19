class Staff < ApplicationRecord
belongs_to :idea, class_name: "Idea", foreign_key: "idea_id"
end
