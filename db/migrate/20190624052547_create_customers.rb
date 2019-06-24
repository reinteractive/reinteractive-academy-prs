class CreateCustomers < ActiveRecord::Migration[5.2]
  def change
    create_table :customers do |t|
      t.string :email,  unique: true
      t.string :token,  unique: true

      t.timestamps
    end
  end
end
