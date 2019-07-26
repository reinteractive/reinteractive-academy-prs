class Status < ApplicationRecord
  belongs_to :idea

  
  stage: { planned: 0, release: 1, building: 2 }
end
