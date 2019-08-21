class CreateAssignedFeedbacks < ActiveRecord::Migration[5.2]
  def change
    create_table :assigned_feedbacks do |t|
      t.integer :idea_id
      t.integer :feedback_id

      t.timestamps
    end
  end
end
