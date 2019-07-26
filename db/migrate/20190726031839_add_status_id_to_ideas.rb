class AddStatusIdToIdeas < ActiveRecord::Migration[5.2]
  def change
    add_column :ideas, :status_id, :integer
  end
end
