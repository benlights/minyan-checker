class DailyMinyanLink < ApplicationRecord
	belongs_to :user
	belongs_to :minyan

	before_create :generate_link

	def generate_link
		self.link = SecureRandom.hex(6)
	end

	def set_date
		self.date = Date.today
	end

	def self.create_link(user_id, minyan_id)
		# link = self.new(user_id: user_id, minyan_id: minyan_id)
		# link.generate_link
		# link.set_date
		link = self.find_or_create_by(user_id: user_id, minyan_id: minyan_id, date: Date.today)
		# if exist.count >
		# 	return exist.last
		# end
		# link.save
		return link
	end
	
end
