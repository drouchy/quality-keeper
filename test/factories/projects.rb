
FactoryGirl.define do
  factory :project do
      sequence :name do |n| "Project #{n}" end
      description { "Dumque ibi diu moratur commeatus opperiens, quorum translationem ex Aquitania verni imbres solito crebriores prohibebant auctique torrentes, Herculanus advenit protector domesticus, Hermogenis ex magistro equitum filius, apud Constantinopolim, ut supra rettulimus, populari quondam turbela discerpti. quo verissime referente quae Gallus egerat, damnis super praeteritis maerens et futurorum timore suspensus angorem animi quam diu potuit emendabat." }
      logo "/assets/icons/default_project.png"
      git_url "http://githost.foo.com/project"
      git_login "login"
      git_password "password"
    end
end
