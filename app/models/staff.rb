class Staff < ApplicationRecord
belongs_to :idea, class_name: "Idea", optional: true



end
