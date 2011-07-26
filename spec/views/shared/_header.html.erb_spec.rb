require 'spec_helper'

describe "shared/_header.html.erb" do
 
  it "should have a logo" do
    render
  
    rendered.should have_selector('img', :id => 'logo', 
                                  :src => '/assets/small_logo.png', :alt => t('application.title'))
  end
  
  describe 'top bar navigation menu' do
    it "should have a top menu bar" do
      render

      rendered.should have_selector('nav', :id => 'top_bar')
    end
  
    it "should have a home menu" do
      render

      should_header_have_navigation_menu(rendered, t('home.link_name'), '/')
    end
  
    it "should have a projects menu" do
      render

      should_header_have_navigation_menu(rendered, t('projects.link_name'), projects_path)
    end
    
    it "should have a stats menu" do
      render

      should_header_have_navigation_menu(rendered, t('stats.link_name'), '#')
    end
    
    it "should have a about menu" do
      render

      should_header_have_navigation_menu(rendered, t('about.link_name'), '#')
    end
    
    it "should have a user info menu" do
      render

      should_header_have_navigation_menu(rendered, t('user.link_name'), '#')
    end
  end
end