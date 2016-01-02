class ResourceAllocationMatrix < ActiveRecord::Base
	belongs_to :project
	has_one :work_breakdown_structure
	has_many :roles
end
