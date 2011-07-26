require 'spec_helper'

describe "projects/new.html.erb" do
  before(:each) do
    assign(:project, stub_model(Project,
      :name => "MyString",
      :description => "MyString",
      :logo => "MyString",
      :git_url => "MyString",
      :git_login => "MyString",
      :git_password => "MyString"
    ).as_new_record)
  end

  it "renders new project form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => projects_path, :method => "post" do
      assert_select "input#project_name", :name => "project[name]"
      assert_select "input#project_description", :name => "project[description]"
      assert_select "input#project_logo", :name => "project[logo]"
      assert_select "input#project_git_url", :name => "project[git_url]"
      assert_select "input#project_git_login", :name => "project[git_login]"
      assert_select "input#project_git_password", :name => "project[git_password]"
    end
  end
end
