class Card < ActiveRecord::Base
	#
	has_many :records, dependent: :destroy
#
  validates :name, presence: true
  validates :num, presence: true, numericality: {only_integer: true},
  	length:{is: 4}, uniqueness: true

end
