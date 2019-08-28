class RemoveNameFromFeedback < ActiveRecord::Migration[5.2]
  def change
    remove_column :feedbacks, :name, :string
  end
end
