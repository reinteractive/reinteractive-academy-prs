class AddLastNameToStaff < ActiveRecord::Migration[5.2]
  def change
    add_column :staffs, :last_name, :string
  end
end
