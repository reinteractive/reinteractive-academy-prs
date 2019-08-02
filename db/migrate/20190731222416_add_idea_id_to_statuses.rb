class AddIdeaIdToStatuses < ActiveRecord::Migration[5.2]
  def change
    add_column :statuses, :idea_id, :integer
  end
end
