class CreateGoods < ActiveRecord::Migration[5.2]
  def change
    create_table :goods do |t|
      t.references :users, foreign_key: true
      t.string :name
      t.string :description
      t.string :image_list_path

      t.timestamps
    end
  end
end
