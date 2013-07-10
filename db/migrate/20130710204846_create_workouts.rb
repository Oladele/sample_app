class CreateWorkouts < ActiveRecord::Migration
  def change
    create_table :workouts do |t|
      t.integer :user_id
      t.string :name
      t.datetime :date

      t.timestamps
    end
    add_index :workouts, :name, unique: false
    add_index :workouts, :date, unique: false
  end
end
