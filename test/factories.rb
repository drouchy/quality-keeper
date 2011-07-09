require 'factory_girl'

Dir[Rails.root.join("test/factories/*.rb")].each {|f| require f}