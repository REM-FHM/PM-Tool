class Workpackage < ActiveRecord::Base
	belongs_to :subtask
	belongs_to :ram_entry
end
