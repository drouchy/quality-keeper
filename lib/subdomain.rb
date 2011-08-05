module Subdomain
  MOBILE_SUBDOMAINS = [ 'm', 'mobile' ]

  def Subdomain.is_mobile_subdomain?(subdomain)
    MOBILE_SUBDOMAINS.include? subdomain
  end
end
