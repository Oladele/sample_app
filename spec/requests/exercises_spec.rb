require 'spec_helper'

describe "Exercise pages" do
  
  subject { page }

  let(:user){ FactoryGirl.create(:user) }
  before { user.toggle!(:admin) }
  before { sign_in user }

  describe "Exercise creation" do
  	before { visit new_exercise_path }

  	describe "with invalid information" do

  		it "should not create an exercise" do
  			expect { click_button "Create Exercise" }.not_to change(Exercise, :count)
  		end

  		describe "error messages" do
  			before { click_button "Create Exercise" }
  			it { should have_content('error') }
  		end
  	end

  	describe "with valid information" do

  		before { fill_in 'exercise_name', with: "Lodrem ipsum" }
  		it "should create Exercise" do
  			expect { click_button "Create Exercise" }.to change(Exercise, :count).by(1)
  		end
  	end

    describe "Exercise destruction" do
      before { FactoryGirl.create(:exercise) }
      
      describe "as correct user" do
        before { visit exercises_path }

        it "should delete an exercise" do
          expect { click_on "Delete" }.to change(Exercise, :count).by(-1)
        end
      end
    end
  end
end
