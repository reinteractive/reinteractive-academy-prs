class RemoveIdeaidFromStatus < ActiveRecord::Migration[5.2]
  def change
    remove_column :statuses, :idea_id, :integer
  end
end
