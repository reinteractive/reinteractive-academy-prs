class RemoveUserStatusFromCategories < ActiveRecord::Migration[5.2]
  def change
    remove_column :categories, :user_status
  end
end
