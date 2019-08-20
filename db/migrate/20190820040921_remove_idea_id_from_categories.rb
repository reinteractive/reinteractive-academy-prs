class RemoveIdeaIdFromCategories < ActiveRecord::Migration[5.2]
  def change
    remove_column :categories, :idea_id, :integer
  end
end
