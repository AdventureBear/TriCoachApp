class CreateRaces < ActiveRecord::Migration
  def change
    create_table :races do |t|
 	  t.string :name
      t.text :description
      t.string :image_url
      t.string :race_url
      t.decimal :swim_distance
      t.string :swim_units
      t.decimal :bike_distance
      t.string :bike_units
      t.decimal :run_distance
      t.string :run_units
      t.text	:race_category
      t.decimal :race_distance_total
      t.date :race_date
      t.text :city
      t.text :state
      t.decimal :zip_code
      t.decimal :price, precision:6, scale: 2
      t.text :comments
      t.timestamps
    end
  end
end
