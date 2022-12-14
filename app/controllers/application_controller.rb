class ApplicationController < ActionController::Base
    def after_sign_in_path_for(resource)
      stored_location_for(resource) ||
        if resource.is_a?(AdminUser)
          admin_dashboard_path 
        elsif resource.is_a?(Employee)
          employee_dashboard_path
        else
          super
        end
      end
end
