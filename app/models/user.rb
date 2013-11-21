class User < ActiveRecord::Base
  attr_accessible :email, :name, :user_id

  has_many :authorizations
  has_many :scubas

  validates :name, :presence => true
  validates :email, :presence => true

  # def self.create_with_omniauth(auth)
  # 	create! do |user|
  # 		user.provider = auth.provider
  # 		user.uid =auth.uid
  # 		user.name = auth.info.name
  # 		user.email = auth.info.email
  # 	end
  # end
end