class CreateTravels < ActiveRecord::Migration[5.2]
  def up
    create_table :travels do |t|
      t.string :origin_place
      t.string :destination_place
      t.string :url_origin
      t.string :url_destination
      t.date :check_in
      t.date :check_out
      t.boolean :is_verified, default: false
      t.integer :status, default: 0
      t.float :suitcase_capacity, default: 0.0
      t.references :traveler, foreign_key: true

      t.timestamps
    end
  end

  def down
    drop_table :travels
  end
end
