class ResourceAllocationMatrix < ActiveRecord::Base
	belongs_to :project
	belongs_to :component
	belongs_to :workpackage
	belongs_to :resource
end
