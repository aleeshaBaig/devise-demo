class AddUserIdToElectricity < ActiveRecord::Migration[7.0]
  def change
    add_column :electricities, :user_id, :integer
    add_index :electricities, :user_id
  end
end
