class Project < ActiveRecord::Base
	has_one :work_breakdown_structure, dependent: :destroy
	has_one :product_breakdown_structure, dependent: :destroy
	has_one :resource_breakdown_structure, dependent: :destroy
	has_one :roadmap, dependent: :destroy
	has_one :delphi_estimation, dependent: :destroy
	has_one :resource_allocation_matrix, dependent: :destroy
end
