class Plan < ApplicationRecord
	self.inheritance_column = nil
	belongs_to :operator
	#belongs_to :recharge

end
