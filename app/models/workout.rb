# == Schema Information
#
# Table name: workouts
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  name       :string(255)
#  date       :datetime
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Workout < ActiveRecord::Base
	attr_accessible :date, :name
  belongs_to :user

	validates :name, presence: true, length: { maximum: 50 }
	validates :user_id, presence: true

end
