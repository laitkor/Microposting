FactoryGirl.define do
	factory :user do
		name     "Akash Agrawal	"
		email    "akashspeaking@outlook.com"
		password "foobar"
		password_confirmation "foobar"
	end
	factory :micropost do
		content "Lorem ipsum"
		user
	end
end