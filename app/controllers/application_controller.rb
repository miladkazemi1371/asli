class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception 
 
  


  def layout_by_resorce
    if devise_controller?
      'devise'
    else
      'application'
    end
  end


 


  def after_sign_in_path_for(user)
  	if not user.profile.nil?

      if user.profile.age.nil?

  		  edit_profile_path(user.profile)
      else
        root_url
      end
    else
      if user.profile.nil?
    	 new_profile_path(user)
      else
        root_url
    	end
    end
  end

  #def after_sign_up_path_for(user)
  #	if user.profile.present?
  #		profile_path(user)
  #else
  #	new_profile_path(user)
  #	end	
  #end

 def after_sign_out_path_for(user)
 	root_url
 end

end
