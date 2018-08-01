class CreatePayments < ActiveRecord::Migration[5.2]
  def change
    create_table :payments do |t|
      t.string :purpose, limit: 50
      t.references :cards, foreign_key: true
      t.decimal :amount, precision: 5, scale: 2, default: 0.0
      t.datetime :receipt_date
      t.datetime :payment_date

      t.timestamps
    end
  end
end
