class Workout < ActiveRecord::Base
	attr_accessible :date, :name
  belongs_to :user

	validates :name, presence: true, length: { maximum: 50 }
	validates :user_id, presence: true

end
