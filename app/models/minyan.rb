class Minyan < ApplicationRecord
	has_many :daily_minyans
	has_many :users
end
