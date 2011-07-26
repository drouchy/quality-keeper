require 'spec_helper'

describe "projects/show.html.erb" do
  before(:each) do
    @project = assign(:project, stub_model(Project,
      :name => "Name",
      :description => "Description",
      :logo => "Logo",
      :git_url => "Git Url",
      :git_login => "Git Login",
      :git_password => "Git Password"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Description/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Logo/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Git Url/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Git Login/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Git Password/)
  end
end
