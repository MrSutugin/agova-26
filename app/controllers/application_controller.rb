class ApplicationController < ActionController::Base
  include BasicAuth

  def current_profile 
    current_account.profile
  end
  
  helper_method :current_profile
end
