class AddStatusIdToStaffs < ActiveRecord::Migration[5.2]
  def change
    add_column :staffs, :status_id, :integer
  end
end
