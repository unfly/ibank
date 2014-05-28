class Record < ActiveRecord::Base

	belongs_to :card
	#
	validates :money, presence: true, numericality: true
end
