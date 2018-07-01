class CreateTravelers < ActiveRecord::Migration[5.2]
  def up
    create_table :travelers do |t|
      t.string :url_document
      t.boolean :is_verified, default: false
      t.integer :status, default: 0
      t.references :user, foreign_key: true

      t.timestamps
    end
  end

  def down
    drop_table :travelers
  end
end
