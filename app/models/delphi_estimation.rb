class DelphiEstimation < ActiveRecord::Base
	belongs_to :project
	has_many :rounds, dependent: :destroy, :foreign_key => "delphiEstimation_id"
end
