class RemoveStatusidFromIdeas < ActiveRecord::Migration[5.2]
  def change
    remove_column :ideas, :status_id, :integer
  end
end
