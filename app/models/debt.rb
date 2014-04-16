class Debt < ActiveRecord::Base
	belongs_to :company
	belongs_to :collector
	has_many :payments
end
