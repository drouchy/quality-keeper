require 'spec_helper'
require 'subdomain'

describe Subdomain do

  describe 'is_mobile_subdomain' do

    it 'should not detect as a mobile with www subdomain' do
      Subdomain.is_mobile_subdomain?('www').should be_false
    end

    it 'should not detect as a mobile with no subdomain' do
      Subdomain.is_mobile_subdomain?(nil).should be_false
    end

    it 'should  detect as a mobile with m subdomain' do
      Subdomain.is_mobile_subdomain?('m').should be_true
    end

    it 'should  detect as a mobile with mobile subdomain' do
      Subdomain.is_mobile_subdomain?('mobile').should be_true
    end
  end
end
