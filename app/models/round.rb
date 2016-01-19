class Round < ActiveRecord::Base
	belongs_to :delphi_estimation
	has_many :expert_forms, dependent: :destroy
	has_one :form_template, dependent: :destroy
end
