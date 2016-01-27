class RamEntry < ActiveRecord::Base
	belongs_to :workpackage
	has_one :resource
	has_one :component
end
