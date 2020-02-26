class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :event_users
  has_many :events, dependent: :destroy
  validates :username, :age, presence: true
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
