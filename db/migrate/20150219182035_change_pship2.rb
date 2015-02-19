class ChangePship2 < ActiveRecord::Migration
  def change
    remove_column :partnerships, :user
    remove_column :partnerships, :partner

    add_column :partnerships, :user_id, :integer
    add_column :partnerships, :partner_id, :integer
  end
end
