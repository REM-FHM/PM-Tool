class Workpackage < ActiveRecord::Base
	belongs_to :subtask
	has_one :ram_entry, dependent: :destroy
	belongs_to :estimation
	belongs_to :estimation_template
end
