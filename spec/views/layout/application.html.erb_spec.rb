require 'spec_helper'

describe "layouts/application.html.erb" do
 
  describe "headers" do  
    it "should have a title" do
      render
      
      rendered.should have_selector('title', :content => t('application.title'))
    end
    
    it "should have an author" do
      render
      
      rendered.should have_selector('meta', :name => 'author') do |meta|
        have_xpath("@content") do |value|
          value.should == "David Rouchy"
        end
      end
    end
    
    it "should have an description" do
      render
      
      rendered.should have_selector('meta', :name => 'description') do |meta|
        have_xpath("@content") do |value|
          value.should == t('application.description')
        end
      end
    end
  end
  
  describe "body" do 
    it "should have a container div" do
      render
      
      rendered.should have_selector('div', :id => 'container')
    end
    
    describe "header" do
      it "should have a header tag" do
        render
      
        rendered.should have_selector('div', :id => 'container') do | container |
          container.should have_selector('header')
        end
      end
      
      it "should render to header from partial" do
        sub_content = "This content"
        stub_template "shared/_header.html.erb" => sub_content
            
        render
          
        rendered.should have_selector('div', :id => 'container') do | container |
          container.should have_selector('header', :content => sub_content)
        end
      end
    end
    
    it "should have a main tag" do
      render
      
      rendered.should have_selector('div', :id => 'main', :role => 'main')
    end
    
    describe "footer" do
      it "should have a footer tag" do
        render
      
        rendered.should have_selector('div', :id => 'container') do | container |
          container.should have_selector('footer')
        end
      end
      
      it "should render to footer from partial" do
        sub_content = "This content"
        stub_template "shared/_footer.html.erb" => sub_content
            
        render
          
        rendered.should have_selector('div', :id => 'container') do | container |
          container.should have_selector('footer', :content => sub_content)
        end
      end
    end
  end

end