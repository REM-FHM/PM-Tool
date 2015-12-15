class Subproduct < ActiveRecord::Base
	belongs_to :product_breakdown_structure
	has_many :moduls, dependent: :destroy
end
