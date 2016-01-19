class Workpackage < ActiveRecord::Base
	belongs_to :subtask
	belongs_to :estimation
	belongs_to :estimation_template
end
