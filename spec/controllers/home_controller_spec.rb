require 'spec_helper'

describe HomeController do

  describe "html format" do
    describe "GET 'index'" do
      it "should be successful" do
        get 'index'
        response.should be_success
      end
    end
  end

  describe "mobile format" do
    describe "GET 'index'" do
      it "should be successful" do
        get 'index'
        response.should be_success
      end
    end
  end
end
