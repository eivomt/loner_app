class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :event_users, dependent: :destroy
  has_many :events, through: :event_users

  has_one_attached :photo

  # validates :username, :age, presence: true
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
