class Sender < ActiveRecord::Base
		has_many :receivers
	  has_many :packages
		accepts_nested_attributes_for :receivers, :allow_destroy => true#, :limit => 1
	  accepts_nested_attributes_for :packages, :allow_destroy => true#, :limit => 1
end
