# users migration
class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :username, null: false
      t.string :password_digest, null: false
      t.string :confirmation_token
      t.string :mode, null: false
      t.datetime :confirmed_at
      t.datetime :confirmation_sent_at
      t.timestamps
    end
  end
end
