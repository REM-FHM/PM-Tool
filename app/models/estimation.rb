class Estimation < ActiveRecord::Base
	has_one :workpackage
	belongs_to :expert_form
end
