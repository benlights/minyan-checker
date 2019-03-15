class User < ApplicationRecord
	has_many :minyans
	has_many :daily_minyans through :daily_minyan_users
end
