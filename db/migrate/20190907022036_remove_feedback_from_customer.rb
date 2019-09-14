class RemoveFeedbackFromCustomer < ActiveRecord::Migration[5.2]
  def change
    remove_column :customers, :feedback, :string
  end
end
