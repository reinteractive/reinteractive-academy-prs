class AddStaffIdToIdeas < ActiveRecord::Migration[5.2]
  def change
    add_column :ideas, :staff_id, :integer
  end
end
