class ResourceBreakdownStructure < ActiveRecord::Base
	belongs_to :project
	has_many :types, dependent: :destroy, :foreign_key => "rbs_id"
end
