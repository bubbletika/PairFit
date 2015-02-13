class CreateUserMarks < ActiveRecord::Migration
  def change
    create_table :user_marks do |t|
      t.decimal :amount
      t.integer :user_id
      t.integer :mark_id

      t.timestamps
    end
  end
end
