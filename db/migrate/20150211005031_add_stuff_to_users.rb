class AddStuffToUsers < ActiveRecord::Migration
  def change
    add_column :users, :age, :integer
    add_column :users, :gender, :string
    add_column :users, :weight, :decimal
    add_column :users, :height, :decimal
  end
end
