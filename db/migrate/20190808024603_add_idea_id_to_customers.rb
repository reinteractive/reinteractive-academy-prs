class AddIdeaIdToCustomers < ActiveRecord::Migration[5.2]
  def change
    add_column :customers, :idea_id, :integer
  end
end
