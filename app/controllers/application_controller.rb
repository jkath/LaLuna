# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time
  protect_from_forgery # See ActionController::RequestForgeryProtection for details

  include AuthenticatedSystem

  def admin_required
    if current_user == nil || current_user.blank?
      redirect_to :controller => 'main', :action => 'index'
    end
    if !current_user.is_admin
      redirect_to :controller => 'main', :action => 'index'
    end

  end
  # Scrub sensitive parameters from your log
  # filter_parameter_logging :password
end
