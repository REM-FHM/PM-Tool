class Resource < ActiveRecord::Base
	belongs_to :role
	validates :quantitiy, :numericality => {:only_integer => true}
end
