class ChangePartnership < ActiveRecord::Migration
  def change
    remove_index :partnerships, :buddy1_id
    remove_index :partnerships, :buddy2_id

    remove_column :partnerships, :buddy1_id
    remove_column :partnerships, :buddy2_id

    add_column :partnerships, :user, :integer
    add_column :partnerships, :partner, :integer
  end
end
