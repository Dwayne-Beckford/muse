class User < ApplicationRecord
  has_many :bookings
  has_many :artworks
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable :database_authenticatable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
