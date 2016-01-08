class Project < ActiveRecord::Base
	has_one :work_breakdown_structure
	has_one :product_breakdown_structure
	has_one :resource_breakdown_structure
	has_one :roadmap
end
