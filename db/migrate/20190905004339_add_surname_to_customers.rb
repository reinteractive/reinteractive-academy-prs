class AddSurnameToCustomers < ActiveRecord::Migration[5.2]
  def change
    add_column :customers, :surname, :string
  end
end
