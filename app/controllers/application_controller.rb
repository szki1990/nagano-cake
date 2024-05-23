class ApplicationController < ActionController::Base
   protected

  def after_sign_out_path_for(resource_or_scope)
    if resource_or_scope == :admin
      '/admin/sign_in'  
    else
      root_path 
    end
  end
end
