class CreateFeedbackIdeas < ActiveRecord::Migration[5.2]
  def change
    create_table :feedback_ideas do |t|
      t.integer :feedback_id
      t.integer :idea_id

      t.timestamps
    end
  end
end
