class Role < ActiveRecord::Base
	belongs_to :type
	has_many :resources, dependent: :destroy
end
