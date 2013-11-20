class Authorization < ActiveRecord::Base
  attr_accessible :provider, :uid, :user_id, :user

  belongs_to :user
  validates :provider, :uid, :presence => true
end
