class AddFirstNameToStaff < ActiveRecord::Migration[5.2]
  def change
    add_column :staffs, :first_name, :string
  end
end
