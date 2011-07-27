require 'spec_helper'

describe "projects/index.html.erb" do
  before(:each) do
    @projects = [
      FactoryGirl.build(:project, :id => 1),
      FactoryGirl.build(:project, :id => 2)
    ]
    
    assign(:projects, @projects)
  end
  
  describe it "render a list a project" do
    
    it 'renders a li per project' do
      render
      
      assert_select "ul#projects>li.project", :count => 2
    end
    
    it 'renders the name of the project' do
      render
      
      @projects.each { | project | assert_select "ul#projects>li.project>h2", :text => project.name }
    end
    
    it 'renders the logo of the project' do
      render
      
      @projects.each do | project |
        rendered.should have_selector('img', :src => project.logo, :alt => project.name)
      end
    end
    
    it 'renders the description of the project' do
      render
      
      @projects.each { | project | assert_select "ul#projects>li.project>.description", :text => project.description }
    end
    
    it 'renders the show link' do
      render
      
      @projects.each do | project |
        rendered.should have_selector('a', :href => project_path(project), :content => t('projects.show_link_name'))
      end
    end
    
    it 'renders the edit link' do
      render
      
      @projects.each do | project |
        rendered.should have_selector('a', :href => edit_project_path(project), :content => t('projects.edit_link_name'))
      end
    end
    
    it 'renders the delete link' do
      render
      
      @projects.each do | project |
        rendered.should have_selector('a', :href => project_path(project), :content => t('projects.delete_link_name'))
      end
    end
  end
end
