# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time
  helper_method :current_user
  helper_method :get_user_name
  protect_from_forgery # See ActionController::RequestForgeryProtection for details

  load_and_authorize_resource :bid
  load_and_authorize_resource :photo, :through => :bid
#  load_and_authorize_resource :photo, :through => :bid, :parent => false, :shallow =>true
  
  private
  def current_user_session
    return @current_user_session if defined?(@current_user_session)
    @current_user_session = UserSession.find
  end
  def current_user
    @current_user = current_user_session && current_user_session.record
  end
  def get_user_name
    @user = current_user
    if @user.nil?
     "Guest" 
    else
      @user.username
    end
    
  end
  
  # Scrub sensitive parameters from your log
  # filter_parameter_logging :password
end
