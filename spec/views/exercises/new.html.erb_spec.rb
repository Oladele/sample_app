require 'spec_helper'

describe "exercises/new" do
  before(:each) do
    assign(:exercise, stub_model(Exercise,
      :name => "MyString",
      :rep_distance => 1.5,
      :dfactor_body_up => 1.5,
      :dfactor_body_down => 1.5,
      :dfactor_body_lat => 1.5,
      :dfactor_body_static_tension_max => 1.5,
      :dfactor_body_static_tension_min => 1.5,
      :wfactor_body_up => 1.5,
      :wfactor_body_down => 1.5,
      :wfactor_body_lat => 1.5,
      :wfactor_body_static_tension_max => 1.5,
      :wfactor_body_static_tension_min => 1.5
    ).as_new_record)
  end

  it "renders new exercise form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => exercises_path, :method => "post" do
      assert_select "input#exercise_name", :name => "exercise[name]"
      assert_select "input#exercise_rep_distance", :name => "exercise[rep_distance]"
      assert_select "input#exercise_dfactor_body_up", :name => "exercise[dfactor_body_up]"
      assert_select "input#exercise_dfactor_body_down", :name => "exercise[dfactor_body_down]"
      assert_select "input#exercise_dfactor_body_lat", :name => "exercise[dfactor_body_lat]"
      assert_select "input#exercise_dfactor_body_static_tension_max", :name => "exercise[dfactor_body_static_tension_max]"
      assert_select "input#exercise_dfactor_body_static_tension_min", :name => "exercise[dfactor_body_static_tension_min]"
      assert_select "input#exercise_wfactor_body_up", :name => "exercise[wfactor_body_up]"
      assert_select "input#exercise_wfactor_body_down", :name => "exercise[wfactor_body_down]"
      assert_select "input#exercise_wfactor_body_lat", :name => "exercise[wfactor_body_lat]"
      assert_select "input#exercise_wfactor_body_static_tension_max", :name => "exercise[wfactor_body_static_tension_max]"
      assert_select "input#exercise_wfactor_body_static_tension_min", :name => "exercise[wfactor_body_static_tension_min]"
    end
  end
end
