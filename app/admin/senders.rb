ActiveAdmin.register Sender do
  form do |f|
	 f.inputs "Sender Details" do
      f.input :name
			f.input :email
			f.input :street
			f.input :city
			f.input :state
			f.input :pin
			#~ f.input :receivers
			#~ f.input :customer_type,:as => :select, :collection => [["Package Sender", "Package Sender"], ["Package Receiver","Package Receiver"]]
    end
		
		f.inputs  do
			f.has_many :receivers do |r|
				r.input :name
				r.input :email
				r.input :street
				r.input :city
				r.input :state
				r.input :pin
				#~ f.input :senders
			end
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

   create do
	  sender=Sender.find_by_id(params[:id])
		render :partial => "sender_details",:locals=>{:sender=>sender}
	end
end
