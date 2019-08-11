class CreateIdeaStatuses < ActiveRecord::Migration[5.2]
  def change
    create_table :idea_statuses do |t|
      t.integer :idea_id
      t.integer :status_id

      t.timestamps
    end
  end
end
