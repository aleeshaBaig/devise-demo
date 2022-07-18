class ApplicationController < ActionController::Base
    before_action :authenticate_user!
     
    def after_sign_in_path_for(resources)
     if resources.email == "admin@gmail.com"
        root_path
     else
        customers_url

     end
    end
    def after_sign_out_path_for(resource_or_scope)
        root_path
    end
end
