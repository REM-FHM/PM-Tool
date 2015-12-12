class Task < ActiveRecord::Base
	belongs_to :work_breakdown_structure
	has_many :subtasks, dependent: :destroy
end
