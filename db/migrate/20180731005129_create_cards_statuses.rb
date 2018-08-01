class CreateCardsStatuses < ActiveRecord::Migration[5.2]
  def change
    create_table :cards_statuses do |t|
      t.string :title, unique: true
      t.string :description
    end
  end
end
