class User < ApplicationRecord
	has_many :attendances
	has_many :events
	has_many :events, through: :attendances
	validates :first_name, presence: true
	validates :last_name, presence: true
end
