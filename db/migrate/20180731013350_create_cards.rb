class CreateCards < ActiveRecord::Migration[5.2]
  def change
    create_table :cards do |t|
      t.references :goods, foreign_key: true
      t.integer :cards_statuses_id, default: 1
      t.decimal :price, precision: 5, scale: 2, default: 0.0
      t.decimal :step, precision: 5, scale: 2, default: 0.0
      t.boolean :suggest, default: false
      t.boolean :consent, default: false
      t.integer :goods_status_sellers_id, default: 1
      t.integer :goods_status_buyers_id, default: 1
      t.integer :goods_categories_id

      t.timestamps
    end
  end
end
