require 'spec_helper'

describe "exercises/show" do
  before(:each) do
    @exercise = assign(:exercise, stub_model(Exercise,
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
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/1.5/)
    rendered.should match(/1.5/)
    rendered.should match(/1.5/)
    rendered.should match(/1.5/)
    rendered.should match(/1.5/)
    rendered.should match(/1.5/)
    rendered.should match(/1.5/)
    rendered.should match(/1.5/)
    rendered.should match(/1.5/)
    rendered.should match(/1.5/)
    rendered.should match(/1.5/)
  end
end
