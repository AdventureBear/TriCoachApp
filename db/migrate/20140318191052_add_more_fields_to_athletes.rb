class AddMoreFieldsToAthletes < ActiveRecord::Migration
  def change
    add_column :athletes, :address_one, :string
    add_column :athletes, :address_two, :string
    add_column :athletes, :city, :string
    add_column :athletes, :state, :string
    add_column :athletes, :zip, :string
    add_column :athletes, :image_file_name, :string
  end
end
