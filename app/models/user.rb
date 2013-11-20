class User < ActiveRecord::Base
  attr_accessible :email, :name, :user_id

  has_many :authorizations
  has_many :scubas

  validates :name, :email, :user_id, :presence => true
end