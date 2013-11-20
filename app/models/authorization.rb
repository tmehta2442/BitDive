class Authorization < ActiveRecord::Base
  attr_accessible :provider, :uid, :name

  belongs_to :user
  validates :provider, :uid, :name, :presence => true
end
