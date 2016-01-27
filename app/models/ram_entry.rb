class RamEntry < ActiveRecord::Base
	has_one :resource
	has_one :component
	has_one :workpackage
end
