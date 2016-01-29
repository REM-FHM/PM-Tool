class ProductBreakdownStructure < ActiveRecord::Base
	belongs_to :project
	has_many :subproducts, dependent: :destroy, :foreign_key => "pbs_id"
end
