class ExerciseCategory < ActiveRecord::Base
  attr_accessible :description, :name

    validates :name, presence: true, length: { maximum: 50 }

end
