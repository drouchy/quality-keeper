require 'spec_helper'

describe HomeController do
  describe "routing" do
    
    it "should route root to index of HomeController" do
      { :get => '/' }.should route_to :controller => "home", :action => 'index'
    end
  end
end