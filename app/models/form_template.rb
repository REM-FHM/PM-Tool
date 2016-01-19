class FormTemplate < ActiveRecord::Base
	belongs_to :round
	has_many :estimation_templates, dependent: :destroy
end
