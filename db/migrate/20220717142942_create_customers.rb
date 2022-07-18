class CreateCustomers < ActiveRecord::Migration[7.0]
  def change
    create_table :customers do |t|
      t.string :name
      t.string :email
      t.integer :phone
      t.string :city
      t.string :refernces
      t.string :invoices

      t.timestamps
    end
  end
end
