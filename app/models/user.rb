class User < ApplicationRecord
  has_secure_password

  validates_presence_of :email 
  validates_uniqueness_of :email 
  
  has_many :workouts, dependent: :destroy
  has_many :meditations, dependent: :destroy
  has_many :journals, dependent: :destroy
  has_many :showers, dependent: :destroy



end
