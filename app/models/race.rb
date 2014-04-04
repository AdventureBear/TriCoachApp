class Race < ActiveRecord::Base
	has_many :raceregs, dependent: :destroy
	has_many :participants, through: :raceregs, source: :user
	
	validates :name, :race_date, :priority, presence:true


end
