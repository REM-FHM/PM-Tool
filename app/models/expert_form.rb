class ExpertForm < ActiveRecord::Base
	belongs_to :round
	has_many :estimations, dependent: :destroy
end
