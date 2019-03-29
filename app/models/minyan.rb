class Minyan < ApplicationRecord
	has_many :users
	has_many :daily_minyan_links

	def run_minyan
		self.users.each { |u| 
			link = u.create_link
			puts link
			MinyanMailer.reminder_email(link).deliver! 
		}
	end

	def joining_today
		date = Date.today
		links = self.daily_minyan_links.where(joining: true).where(date: date).count
	end
end
