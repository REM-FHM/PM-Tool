class Type < ActiveRecord::Base
	belongs_to :resource_breakdown_structure
	has_many :roles, dependent: :destroy
end
