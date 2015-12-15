class Component < ActiveRecord::Base
	belongs_to :modul
	has_one :resource_allocation_matrix
end
