ActiveAdmin.register Branch do
	
	filter :name
	filter :city
	filter :state
	index do
    column :name
    column :city
    column :phone
    default_actions
  end
	
   show do
	  user=Package.find_by_id(params[:id])
		render :partial => "branch_details",:locals=>{:branch=>branch}
	end
end
