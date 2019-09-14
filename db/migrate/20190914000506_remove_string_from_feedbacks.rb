class RemoveStringFromFeedbacks < ActiveRecord::Migration[5.2]
  def change
    remove_column :feedbacks, :string, :string
  end
end
