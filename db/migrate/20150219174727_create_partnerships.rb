class CreatePartnerships < ActiveRecord::Migration
  def change
    create_table :partnerships do |t|
      t.integer :buddy1_id
      t.integer :buddy2_id

      t.timestamps
    end

    add_index :partnerships, :buddy1_id
    add_index :partnerships, :buddy2_id
  end
end
