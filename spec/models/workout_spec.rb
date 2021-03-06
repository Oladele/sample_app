# == Schema Information
#
# Table name: workouts
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  name       :string(255)
#  date       :datetime
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'spec_helper'

describe Workout do
  
  let(:user) { FactoryGirl.create(:user) }
  before { @workout = user.workouts.build(name: "Lorem ipsum") }

  #look into changing @exercise_category to use use FactoryGirl
  #this should change @exer* to exer* - No instance var req'd
  #before { @workout = Workout.new(name: "Lorem ipsum") }

	subject { @workout }

	it { should respond_to(:name) }
	it { should respond_to(:date) }
	it { should respond_to(:user) }
	its(:user) { should == user }

	it { should	be_valid }

	describe "accessible attributes" do
		it "should not allow access to user_id" do
			expect do
				Micropost.new(user_id: user.id)
			end.to raise_error(ActiveModel::MassAssignmentSecurity::Error)
		end
	end

	describe "when user_id is not present" do
		before { @workout.user_id = nil }
		it { should_not be_valid }
	end

	describe "with blank name" do
		before { @workout.name = " "}
		it { should_not be_valid }
	end

	describe "with name that is too long" do
		before { @workout.name = "a"*51 }
		it { should_not be_valid }
	end
end
