class ResourceBreakdownStructure < ActiveRecord::Base
	belongs_to :project
	has_many :types, dependent: :destroy
end
