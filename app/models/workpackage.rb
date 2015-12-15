class Workpackage < ActiveRecord::Base
	belongs_to :subtask
	has_one :resource_allocation_matrix
end
