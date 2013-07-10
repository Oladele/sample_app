# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :exercise do
    name "MyString"
    rep_distance 1.5
    dfactor_body_up 1.5
    dfactor_body_down 1.5
    dfactor_body_lat 1.5
    dfactor_body_static_tension_max 1.5
    dfactor_body_static_tension_min 1.5
    wfactor_body_up 1.5
    wfactor_body_down 1.5
    wfactor_body_lat 1.5
    wfactor_body_static_tension_max 1.5
    wfactor_body_static_tension_min 1.5
  end
end
