class CreateCars < ActiveRecord::Migration[7.0]
  def change
    create_table :cars do |t|
      t.references :user, null: false, foreign_key: true
      t.string :brand
      t.string :model
      t.integer :year_of_production
      t.string :address
      t.decimal :price_per_day
      t.string :color
      t.text :image_urls
      t.string :transmission
      t.integer :mileage
      t.integer :seats
      t.string :fuel_type

      t.timestamps
    end
  end
end
