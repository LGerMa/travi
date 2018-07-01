class CreateReviews < ActiveRecord::Migration[5.2]
  def up
    create_table :reviews do |t|
      t.text :review
      t.integer :stars, default: 0
      t.references :reviewable, polymorphic: true, index: true
      t.references :ownerable, polymorphic: true, index: true
      t.timestamps
    end
  end

  def down
    drop_table :reviews
  end
end
