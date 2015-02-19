class UserActivity < ActiveRecord::Base
  belongs_to :user
  belongs_to :activity

  has_many :activities

end
