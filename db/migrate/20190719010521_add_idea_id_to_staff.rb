class AddIdeaIdToStaff < ActiveRecord::Migration[5.2]
  def change
    add_column :staffs, :idea_id, :integer
  end
end
