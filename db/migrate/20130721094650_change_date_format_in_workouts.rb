class ChangeDateFormatInWorkouts < ActiveRecord::Migration
  def up
  	change_column :workouts, :date, :date
  end

  def down
  	change_column :workouts, :date, :datetime
  end
end
