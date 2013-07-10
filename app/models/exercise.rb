class Exercise < ActiveRecord::Base
  attr_accessible :dfactor_body_down, :dfactor_body_lat, :dfactor_body_static_tension_max, :dfactor_body_static_tension_min, :dfactor_body_up, :name, :rep_distance, :wfactor_body_down, :wfactor_body_lat, :wfactor_body_static_tension_max, :wfactor_body_static_tension_min, :wfactor_body_up
end
