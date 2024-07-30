class CreateReviews < ActiveRecord::Migration[7.0]
  def change
    create_table :reviews do |t|
      t.references :reservation, null: false, foreign_key: true
      t.string :name
      t.string :content
      t.integer :rating

      t.timestamps
    end
  end
end
