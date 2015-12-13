class Type < ActiveRecord::Base
	belongs_to :resource_breakdown_structer
	has_many :roles, dependent: :destroy
end
