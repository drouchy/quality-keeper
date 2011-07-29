require 'spec_helper'

describe ApplicationHelper do
  
  describe '#generate_current_class' do
    
    before(:each) do
      assign(:controller, HomeController.new)
    end
    
    it 'should return nothing when the current controller is not the one tested' do
      helper.generate_current_class('none').should eq('')
    end
    
    it 'should return class="current" when the current controller is the one tested' do
      helper.generate_current_class(controller.controller_name).should eq('class="current"')
    end
  end
end
