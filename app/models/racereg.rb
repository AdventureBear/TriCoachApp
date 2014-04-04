class Racereg < ActiveRecord::Base
  belongs_to :user
  belongs_to :race


  validates :priority, presence:true

  PRIORITIES = ["A", "B", "C"]

  validates :priority, inclusion: {
  	in: PRIORITIES,
  	message:  "Must have priority A, B or C"
  }



  	


end
