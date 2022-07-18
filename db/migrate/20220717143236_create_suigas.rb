class CreateSuigas < ActiveRecord::Migration[7.0]
  def change
    create_table :suigas do |t|
      t.string :company
      t.integer :consumerId
      t.references :customer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
