ActiveAdmin.register Restaurant do

  scope :closedstatus 

  index do 
    column :name
    column "Contact",:phoneNo
    column :rating 
    column :cutPercent, :sortable => :cutPercent do |restaurant|
      div :class => "alignment" do 
        number_to_percentage restaurant.cutPercent 
      end 
      #for price do number_to_price helper 
    end
    column :location 
    column :postalCode
    column "Opening Time",:startTime
    column "Closing Time",:EndTime
    column :status
    column :admin_user_id 

  end

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
   permit_params :name, :phoneNo, :rating, :cutPercent, :location, :postalCode, :startTime, :EndTime, :status, :admin_user_id
  #
  # or
  #
  # permit_params do
  #   permitted = [:name, :phoneNo, :rating, :cutPercent, :location, :postalCode, :startTime, :EndTime, :status, :admin_user_id]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
