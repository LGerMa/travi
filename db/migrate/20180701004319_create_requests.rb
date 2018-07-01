class CreateRequests < ActiveRecord::Migration[5.2]
  def up
    create_table :requests do |t|
      t.integer :type, default: 0
      t.string :name_article
      t.string :price_article
      t.string :url_article
      t.float :weight_article, default: 0.0
      t.date :date_required
      t.integer :amount, default: 0
      t.text :note
      t.string :origin_place
      t.string :destination_place
      t.boolean :is_public, default: true
      t.boolean :is_suggested_fare, default: false
      t.integer :status, default: 0
      t.integer :payment_method, default: 0
      t.references :category, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end

  def down
    drop_table :requests
  end
end
