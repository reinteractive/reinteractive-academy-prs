class AddCustomerIdToIdea < ActiveRecord::Migration[5.2]
  def change
    add_column :ideas, :customer_id, :integer
  end
end
