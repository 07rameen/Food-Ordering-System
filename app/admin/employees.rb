ActiveAdmin.register Employee do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :first_name, :last_name, :age, :employeemail, :phoneNo, :password, :restaurant_id, :manager_id, :email, :encrypted_password, :reset_password_token, :reset_password_sent_at, :remember_created_at
  #permit_params :first_name, :last_name, :age, :phoneNo, :restaurant_id, :manager_id, :email
  index do
    selectable_column
    id_column
    column :restaurant_id
    column :first_name
    column :last_name
    column :email
    column :phoneNo
    actions
  end

  form do |f|
    f.inputs do
      f.input :restaurant_id
      f.input :first_name
      f.input :last_name
      f.input :phoneNo
      f.input :email
      f.input :password
    end
    f.actions
  end

 
  #
  # or
  #
  # permit_params do
  #   permitted = [:first_name, :last_name, :age, :employeemail, :phoneNo, :restaurant_id, :manager_id, :email, :encrypted_password, :reset_password_token, :reset_password_sent_at, :remember_created_at]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
