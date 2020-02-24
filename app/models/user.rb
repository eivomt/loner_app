class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :events_users, dependent: :destroy
  has_many :events, through: :events_users
  validates :username, :age, presence: true
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
