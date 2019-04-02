class DailyMinyan < ApplicationRecord
  belongs_to :minyan

  def happening
  	if self.minyan.joining_today >= 10
  		self.happening = true
  	end
  	self.save
  end

end
