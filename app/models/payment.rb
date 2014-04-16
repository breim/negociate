class Payment < ActiveRecord::Base
	belongs_to :company
	belongs_to :collector
	belongs_to :debt
end
