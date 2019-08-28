class AddFeedbackIdToCustomers < ActiveRecord::Migration[5.2]
  def change
    add_column :customers, :feedback_id, :integer
  end
end
