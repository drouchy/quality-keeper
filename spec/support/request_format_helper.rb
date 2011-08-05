def force_html_format(request)
  request.format = :html
end

def force_mobile_format(request)
  request.format = :html
end

def stub_mobile_detection
  stub_is_mobile_to true
end

def stub_html_detection
  stub_is_mobile_to false
end

def stub_is_mobile_to(result)
  Subdomain.stub(:is_mobile_subdomain?) { result }
end
