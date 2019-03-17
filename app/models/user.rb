class User < ApplicationRecord
	belongs_to :minyan

	def create_link
		DailyMinyanLink.create_link(self.id, self.minyan.id)
	end
end
