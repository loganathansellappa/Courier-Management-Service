class Package < ActiveRecord::Base
	belongs_to :sender
	belongs_to :staff
	belongs_to :receiver
end
