class CreateUserWorkouts < ActiveRecord::Migration
  def change
    create_table :user_workouts do |t|
      t.datetime :date
      t.string :name
      t.string :length	
      t.timestamps
    end
  end
end
