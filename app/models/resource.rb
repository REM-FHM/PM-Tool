class Resource < ActiveRecord::Base
	belongs_to :role
	belongs_to :ram_entry
	validates :quantitiy, :numericality => {:only_integer => true}
end
