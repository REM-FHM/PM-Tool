class Resource < ActiveRecord::Base
	belongs_to :role
	has_one :resource_allocation_matrix
	validates :quantitiy, :numericality => {:only_integer => true}
end
