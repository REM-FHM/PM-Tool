class ProductBreakdownStructure < ActiveRecord::Base
	belongs_to :project
	has_many :subproducts, dependent: :destroy
end
