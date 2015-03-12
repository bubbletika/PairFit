class CreateWorkouts < ActiveRecord::Migration
  def change
    create_table :workouts do |t|
      t.datetime :date
      t.string :name
      t.string :length

      t.timestamps
    end
  end
end
