class CreateRaceregs < ActiveRecord::Migration
  def change
    create_table :raceregs do |t|
      t.string :name
      t.date :date
      t.string :priority
      t.text :comment
      t.references :athlete, index: true

      t.timestamps
    end
  end
end
