class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :login
      t.string :password_digest
      t.string :fullname
      t.string :email, unique: true
      t.boolean :processing_pd, default: false
      t.references :users_status
      t.boolean :action, default: false

      t.timestamps
    end
  end
end
