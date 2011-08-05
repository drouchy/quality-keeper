require 'subdomain'

class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :check_for_mobile

  def check_for_mobile
    request.format = :mobile if Subdomain.is_mobile_subdomain?(request.subdomain)
  end
end
