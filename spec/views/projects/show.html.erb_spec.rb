require 'spec_helper'

describe "projects/show.html.erb" do
  before(:each) do
    @project = FactoryGirl.build(:project, :id => 1, :git_url => 'url to git')
    
    assign(:project, @project)
  end

 describe "render the project information" do

    it 'renders the project information div' do
      render

      rendered.should have_selector('div', :class => 'project_information' )
    end

    it 'renders the project name' do
      render

      rendered.should have_selector('div h1', :content => @project.name)
    end

    it 'renders the project logo' do
      render

      rendered.should match(/"#{@project.logo}"/)
    end

    it 'renders the project description' do
      render

      rendered.should have_selector('div h1', :content => @project.description)
    end

    it 'renders the project git url' do
      render

      rendered.should match(/url to git/)
    end
  end
end
