class CreateUsers < ActiveRecord::Migration[5.2]
  def up
    create_table :users do |t|
      t.string :firstname
      t.string :lastname
      t.string :username
      t.string :avatar
      t.string :account_id
      t.string :provider
      t.string :telephone_number
      t.string :one_signal_token
      t.timestamps
    end
  end
  def down
    drop_table :users
  end
end
