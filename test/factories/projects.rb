
FactoryGirl.define do
  factory :project do
      sequence :name do |n| "Project #{n}" end
      description { "Description of #{name} " }
      logo "/assets/icons/default_project.png"
      git_url "http://githost.foo.com/project"
      git_login "login"
      git_password "password"
    end
end
