namespace :db do
	desc "Fill database with sample data"
	task populate: :environment do
		admin = User.create!(name: "Akash Agrawal",
			email: "akashspeaking@outlook.com",
			password: "shivansh",
			password_confirmation: "shivansh")
		admin.toggle!(:admin)
	end
end