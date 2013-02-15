FactoryGirl.define do
	factory :user do
		name     "Akash Agrawal	"
		email    "akashspeaking@gmail.com"
		password "foobar"
		password_confirmation "foobar"
	end
	factory :micropost do
		content "Lorem ipsum"
		user
	end
end