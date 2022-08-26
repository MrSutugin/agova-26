module BasicAuth
  extend ActiveSupport::Concern

  private

  def authenticate
    rodauth.require_authentication # redirect to login page if not authenticated
  end
end
