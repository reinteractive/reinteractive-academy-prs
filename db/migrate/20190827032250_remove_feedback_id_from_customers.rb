class RemoveFeedbackIdFromCustomers < ActiveRecord::Migration[5.2]
  def change
    remove_column :customers, :feedback_id, :integer
  end
end
