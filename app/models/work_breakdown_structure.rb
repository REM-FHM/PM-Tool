class WorkBreakdownStructure < ActiveRecord::Base
	belongs_to :project
	has_many :tasks, dependent: :destroy, :foreign_key => "wbs_id"
end
