class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?
  # before_action :store_location
  include Pundit
  after_action :verify_authorized, except: :index, unless: :skip_pundit?
  after_action :verify_policy_scoped, only: :index, unless: :skip_pundit?


  # rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized
  # def user_not_authorized
  #   flash[:alert] = "You are not authorized to perform this action."
  #   redirect_to(root_path)
  # end

  private


  def skip_pundit?
    devise_controller? || params[:controller] =~ /(^(rails_)?admin)|(^pages$)/
  end

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

#   def store_location
#   # session[:previous_urls] ||= []
#   # store unique urls only
#   session[:previous_urls].prepend request.fullpath if session[:previous_urls].first != request.fullpath
#   # For Rails < 3.2
#   # session[:previous_urls].unshift request.fullpath if session[:previous_urls].first != request.fullpath
#   session[:previous_urls].pop if session[:previous_urls].count > 2
# end
# def after_sign_in_path_for(resource)
#   session[:previous_urls].last || root_path
# end
end
