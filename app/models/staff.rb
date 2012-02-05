class Staff < ActiveRecord::Base
	belongs_to  :branch
	has_many  :packages
end
