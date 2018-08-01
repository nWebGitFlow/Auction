class CreateTradeStatuses < ActiveRecord::Migration[5.2]
  def change
    create_table :trade_statuses do |t|
      t.string :title, unique: true
      t.string :description
    end
  end
end
