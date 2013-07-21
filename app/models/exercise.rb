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

class Exercise < ActiveRecord::Base
  attr_accessible :dfactor_body_down, :dfactor_body_lat, :dfactor_body_static_tension_max, :dfactor_body_static_tension_min, :dfactor_body_up, :name, :rep_distance, :wfactor_body_down, :wfactor_body_lat, :wfactor_body_static_tension_max, :wfactor_body_static_tension_min, :wfactor_body_up

      validates :name, presence: true, length: { maximum: 50 }, uniqueness: { case_sensitive: false }

      #TODO implement exercise work expenditure

end
