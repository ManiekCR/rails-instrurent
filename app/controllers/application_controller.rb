class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    # For additional fields in app/views/devise/registrations/new.html.erb
    # this allows the user to add a first name and last name on sign up
    #we sould need to manually add these fields into our fsign up form
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name])

    # For additional in app/views/devise/registrations/edit.html.erb
    #this line controls all the fields the user can add to their profile for example bio or name
    # edit the array that contains :username with any other columns you want to add to users table i.e. :bio
    devise_parameter_sanitizer.permit(:account_update, keys: [:username])
  end
end
