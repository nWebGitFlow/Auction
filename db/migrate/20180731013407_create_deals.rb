class CreateDeals < ActiveRecord::Migration[5.2]
  def change
    create_table :deals do |t|
      t.references :cards, foreign_key: true
      t.integer :trade_statuses_id
      t.references :users, foreign_key: true
      t.boolean :reliability
      t.decimal :price, precision: 5, scale: 2, default: 0.0
      t.integer :exchange_count, limit: 2
      t.string :exchange_list

      t.timestamps
    end
  end
end
