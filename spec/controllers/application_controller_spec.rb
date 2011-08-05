require 'spec_helper'

describe ApplicationController do
  controller do
    def index
      redirect_to '/'
    end
  end

  describe "request.format" do

    it "should keep the format to :html when no mobile subdomain" do
     Subdomain.stub(:is_mobile_subdomain?) { false }
      
      get 'index'

      request.format.should == :html
    end


    it "should put the format as :mobile with a mobile subdomain" do
      Subdomain.stub(:is_mobile_subdomain?) { true }
      
      get 'index'

      request.format.should == :mobile
    end
  end

end
