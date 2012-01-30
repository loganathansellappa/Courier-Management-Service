class Sender < ActiveRecord::Base
		has_many :receivers
	  has_many :packages
		accepts_nested_attributes_for :receivers
	  accepts_nested_attributes_for :packages
end
