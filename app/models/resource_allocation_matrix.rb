class ResourceAllocationMatrix < ActiveRecord::Base
	belongs_to :project
	has_many :ram_entries, dependent: :destroy
end
