require 'spec_helper'

describe "Exercise Category pages" do
  
  subject { page }

  let(:user){ FactoryGirl.create(:user) }
  before { sign_in user }

  describe "Exercise Category creation" do
  	before { visit new_exercise_category_path }

  	describe "with invalid information" do

  		it "should not create an exercise_category" do
  			expect { click_button "Create Exercise category" }.not_to change(ExerciseCategory, :count)
  		end

  		describe "error messages" do
  			before { click_button "Create Exercise category" }
  			it { should have_content('error') }
  		end
  	end

  	describe "with valid information" do

  		before { fill_in 'exercise_category_name', with: "Lodrem ipsum" }
  		it "should create Exercise Category" do
  			expect { click_button "Create Exercise category" }.to change(ExerciseCategory, :count).by(1)
  		end
  	end

    describe "Exercise Category destruction" do
      before { FactoryGirl.create(:exercise_category) }
      
      describe "as correct user" do
        before { visit exercise_categories_path }

        it "should delete a exercise_category" do
          expect { click_on "Delete" }.to change(ExerciseCategory, :count).by(-1)
        end
      end
    end
  end
end