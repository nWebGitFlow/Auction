class CreateGoodsStatusBuyers < ActiveRecord::Migration[5.2]
  def change
    create_table :goods_status_buyers do |t|
      t.string :title, unique: true
      t.string :description
    end
  end
end
