require 'spec_helper'

describe "exercises/index" do
  before(:each) do
    assign(:exercises, [
      stub_model(Exercise,
        :name => "Name",
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
      ),
      stub_model(Exercise,
        :name => "Name",
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
      )
    ])
  end

  it "renders a list of exercises" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 22
    assert_select "tr>td", :text => 1.5.to_s, :count => 22
    assert_select "tr>td", :text => 1.5.to_s, :count => 22
    assert_select "tr>td", :text => 1.5.to_s, :count => 22
    assert_select "tr>td", :text => 1.5.to_s, :count => 22
    assert_select "tr>td", :text => 1.5.to_s, :count => 22
    assert_select "tr>td", :text => 1.5.to_s, :count => 22
    assert_select "tr>td", :text => 1.5.to_s, :count => 22
    assert_select "tr>td", :text => 1.5.to_s, :count => 22
    assert_select "tr>td", :text => 1.5.to_s, :count => 22
    assert_select "tr>td", :text => 1.5.to_s, :count => 22
  end
end
