class Authorization < ActiveRecord::Base
  attr_accessible :provider, :uid, :name, :user_id

  belongs_to :user
  validates :provider, :presence => true
  validates :name, :presence => true
  validates :uid, :presence => true, :uniqueness => true
end
