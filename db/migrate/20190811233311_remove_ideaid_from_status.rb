db/migrate/20190811231847_remove_statusid_from_ideas.rbclass RemoveIdeaidFromStatus < ActiveRecord::Migration[5.2]
  def change
    remove_column :statuses, :idea_id, :integer
  end
end
