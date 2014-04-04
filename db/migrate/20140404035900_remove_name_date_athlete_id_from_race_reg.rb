class RemoveNameDateAthleteIdFromRaceReg < ActiveRecord::Migration
  def up
  	remove_column :raceregs, :name
  	remove_column :raceregs, :date
  end

  def down
  	add_column :raceregs, :date
  	add_column :raceregs, :name
  end
end
