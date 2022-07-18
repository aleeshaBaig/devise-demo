class CreateInvoices < ActiveRecord::Migration[7.0]
  def change
    create_table :invoices do |t|
      t.datetime :date
      t.decimal :amount
      t.string :company

      t.timestamps
    end
  end
end
