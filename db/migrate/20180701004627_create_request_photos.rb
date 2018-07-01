class CreateRequestPhotos < ActiveRecord::Migration[5.2]
  def up
    create_table :request_photos do |t|
      t.string :url_request_photo
      t.references :request, foreign_key: true

      t.timestamps
    end
  end

  def down
    drop_table :request_photos
  end
end
