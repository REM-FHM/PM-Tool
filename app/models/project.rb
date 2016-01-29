class Project < ActiveRecord::Base
	has_one :work_breakdown_structure, dependent: :destroy, :foreign_key => "p_id"
	has_one :product_breakdown_structure, dependent: :destroy, :foreign_key => "p_id"
	has_one :resource_breakdown_structure, dependent: :destroy, :foreign_key => "p_id"
	has_one :roadmap, dependent: :destroy, :foreign_key => "p_id"
	has_one :delphi_estimation, dependent: :destroy, :foreign_key => "p_id"
	has_one :resource_allocation_matrix, dependent: :destroy, :foreign_key => "p_id"
end
