class CreateExercises < ActiveRecord::Migration
  def change
    create_table :exercises do |t|
      t.string :name
      t.float :rep_distance, default: 0
      t.float :dfactor_body_up, default: 0
      t.float :dfactor_body_down, default: 0
      t.float :dfactor_body_lat, default: 0
      t.float :dfactor_body_static_tension_max, default: 0
      t.float :dfactor_body_static_tension_min, default: 0
      t.float :wfactor_body_up, default: 0
      t.float :wfactor_body_down, default: 0
      t.float :wfactor_body_lat, default: 0
      t.float :wfactor_body_static_tension_max, default: 0
      t.float :wfactor_body_static_tension_min, default: 0

      t.timestamps
    end
    add_index :exercises, :name, unique: true
  end
end
