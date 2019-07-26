class Status < ApplicationRecord
  belongs_to :idea, required: false 

  enum stage: { planned: 0, release: 1, building: 2}
  
end
