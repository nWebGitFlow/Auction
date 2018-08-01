class CreateSchedules < ActiveRecord::Migration[5.2]
  def change
    create_table :schedules do |t|
      t.string :news
      t.string :description, limit: 100
      t.datetime :date

      t.timestamps
    end
  end
end
