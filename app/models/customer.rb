class Customer < ActiveRecord::Base
	has_many :packages
	has_many :receivers, :class_name => "Customer"
	belongs_to :customer, :class_name => "Customer", :foreign_key => 'customer_id'
	accepts_nested_attributes_for :packages
end
