ActiveAdmin.register Customer do
form do |f|
	 f.inputs "Sender Details" do
      f.input :name
			f.input :email
			f.input :street
			f.input :city
			f.input :state
			f.input :pin
			#~ f.input :customer_type,:as => :select, :collection => [["Package Sender", "Package Sender"], ["Package Receiver","Package Receiver"]]
    end
		f.inputs "Receiver Details" do
      f.input :name
			f.input :email
			f.input :street
			f.input :city
			f.input :state
			f.input :pin
			#~ f.input :customer_type,:as => :select, :collection => [["Package Sender", "Package Sender"], ["Package Receiver","Package Receiver"]]
    end
		f.inputs do
			f.has_many :packages do |p|
				p.input :weight
				p.input :amount
				p.input :received_date
				p.input :amount
			end
		end
    f.buttons
  end
end
  
