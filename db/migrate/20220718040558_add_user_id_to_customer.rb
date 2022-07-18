class AddUserIdToCustomer < ActiveRecord::Migration[7.0]
  def change
    add_column :customers, :user_id, :integer
    add_index :customers, :user_id
  end
end
