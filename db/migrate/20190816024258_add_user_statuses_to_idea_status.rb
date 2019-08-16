class AddUserStatusesToIdeaStatus < ActiveRecord::Migration[5.2]
  def change
    add_column :idea_statuses, :user_status, :string
  end
end
