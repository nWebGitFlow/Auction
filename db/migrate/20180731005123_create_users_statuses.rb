class CreateUsersStatuses < ActiveRecord::Migration[5.2]
  def change
    create_table :users_statuses do |t|
      t.string :title, unique: true
      t.string :description
    end
  end
end
