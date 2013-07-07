FactoryGirl.define do
	factory :user do
		sequence(:name)	{ |n| "Person #{n}" }
		sequence(:email){ |n| "person_#{n}@example.com" }
		password "foobar"
		password_confirmation "foobar"

		factory :admin do
			admin true
		end
	end

	factory :micropost do
		content "Lorem ipsum"
		user
	end

	#DELE tried to add below but scaffold already
	#generated in spec/factories/exercise_categories.rb
	factory :exercise_category do
		name "some category of exercises"
		description "some description"
	end

end