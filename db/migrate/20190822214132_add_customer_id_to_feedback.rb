class AddCustomerIdToFeedback < ActiveRecord::Migration[5.2]
  def change
    add_column :feedbacks, :customer_id, :integer
  end
end
