require 'spec_helper'

describe Exercise do
  
  #let(:user) { FactoryGirl.create(:user) }
  #before { @micropost = user.microposts.build(content: "Lorem ipsum") }
  
  #look into changing @exercise to use use FactoryGirl
  #this should change @exer* to exer* - No instance var req'd
  before { @exercise = Exercise.new(name: "Lorem ipsum") }

	subject { @exercise }

	it { should respond_to(:name) }
	it { should respond_to(:rep_distance) }
	it { should respond_to(:dfactor_body_up) }
	it { should respond_to(:dfactor_body_down) }
	it { should respond_to(:dfactor_body_lat) }
	it { should respond_to(:dfactor_body_static_tension_max) }
	it { should respond_to(:dfactor_body_static_tension_min) }
	it { should respond_to(:wfactor_body_up) }
	it { should respond_to(:wfactor_body_down) }
	it { should respond_to(:wfactor_body_lat) }
	it { should respond_to(:wfactor_body_static_tension_max) }
	it { should respond_to(:wfactor_body_static_tension_min) }
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
		before { @exercise.name = " "}
		it { should_not be_valid }
	end

	describe "with name that is too long" do
		before { @exercise.name = "a"*51 }
		it { should_not be_valid }
	end
end