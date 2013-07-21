# == Schema Information
#
# Table name: exercise_categories
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class ExerciseCategory < ActiveRecord::Base
  attr_accessible :description, :name

    validates :name, presence: true, length: { maximum: 50 }

end
