class User < ApplicationRecord
	belongs_to :minyan
	has_many :daily_minyan_links

	def create_link
		link = DailyMinyanLink.create_link(self.id, self.minyan.id) 
		return link
	end
end
