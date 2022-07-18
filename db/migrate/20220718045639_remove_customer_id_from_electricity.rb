class RemoveCustomerIdFromElectricity < ActiveRecord::Migration[7.0]
  def change
    remove_column :electricities, :customer_id, :integer
  end
end
