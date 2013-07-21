# == Schema Information
#
# Table name: exercises
#
#  id                              :integer          not null, primary key
#  name                            :string(255)
#  rep_distance                    :float            default(0.0)
#  dfactor_body_up                 :float            default(0.0)
#  dfactor_body_down               :float            default(0.0)
#  dfactor_body_lat                :float            default(0.0)
#  dfactor_body_static_tension_max :float            default(0.0)
#  dfactor_body_static_tension_min :float            default(0.0)
#  wfactor_body_up                 :float            default(0.0)
#  wfactor_body_down               :float            default(0.0)
#  wfactor_body_lat                :float            default(0.0)
#  wfactor_body_static_tension_max :float            default(0.0)
#  wfactor_body_static_tension_min :float            default(0.0)
#  created_at                      :datetime         not null
#  updated_at                      :datetime         not null
#

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

	describe "when exercise name is already taken" do
	 	before do
  		exercise_with_same_name = @exercise.dup
  		exercise_with_same_name.name = @exercise.name.upcase
  		exercise_with_same_name.save
  	end
	  it { should_not be_valid }
	 end

end
