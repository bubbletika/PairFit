class CreateMarks < ActiveRecord::Migration
  def change
    create_table :marks do |t|
      t.integer :activity_id
      t.string :name
      t.string :unit

      t.timestamps
    end
  end
end
