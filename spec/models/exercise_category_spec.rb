require 'spec_helper'

describe ExerciseCategory do
  
  #let(:user) { FactoryGirl.create(:user) }
  #before { @micropost = user.microposts.build(content: "Lorem ipsum") }
  
  #look into changing @exercise_category to use use FactoryGirl
  #this should change @exer* to exer* - No instance var req'd
  before { @exercise_category = ExerciseCategory.new(name: "Lorem ipsum") }

	subject { @exercise_category }

	it { should respond_to(:name) }
	it { should respond_to(:description) }
	#it { should respond_to(:user) }
	#its(:user) { should == user }

	it { should	be_valid }

	#describe "accessible attributes" do
	#	it "should not allow access to user_id" do
	#		expect do
	#			Micropost.new(user_id: user.id)
	#		end.to raise_error(ActiveModel::MassAssignmentSecurity::Error)
	#	end
	#end

	#describe "when user_id is not present" do
	#	before { @micropost.user_id = nil }
	#	it { should_not be_valid }
	#end

	describe "with blank name" do
		before { @exercise_category.name = " "}
		it { should_not be_valid }
	end

	describe "with name that is too long" do
		before { @exercise_category.name = "a"*51 }
		it { should_not be_valid }
	end
end
