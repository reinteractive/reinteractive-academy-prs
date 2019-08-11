class AddStaffIdToStatus < ActiveRecord::Migration[5.2]
  def change
    add_column :statuses, :staff_id, :integer
  end
end
