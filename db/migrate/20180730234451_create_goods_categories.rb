class CreateGoodsCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :goods_categories do |t|
      t.string :title, unique: true
      t.string :description
    end
  end
end
