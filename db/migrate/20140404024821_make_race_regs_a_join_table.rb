class MakeRaceRegsAJoinTable < ActiveRecord::Migration
  def change
  	add_column :raceregs, :user_id, :integer
  	add_column :raceregs, :race_id, :integer
  end
end
