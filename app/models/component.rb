class Component < ActiveRecord::Base
	belongs_to :modul
	belongs_to :ram_entry
	has_one :milestone, dependent: :destroy
end
