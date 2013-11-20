class Scuba < ActiveRecord::Base

  attr_accessible :user_id, :dive_num, :date, :location, :time_in, :time_out, :temperature, :visability, :environment, :conditions, :protection, :comments

  belongs_to :user

  validates :user_id, presence: true
  validates :div_num, presence: true
  validates :date, presence: true
  validates :location, presence: true
  validates :time_in, presence: true
  validates :time_out, presence: true
  validates :temperature, presence: true
  validates :visability, presence: true
  validates :environment, presence: true
  validates :conditions, presence: true
  validates :protection, presence: true
  validates :comments, presence: true


end