class Event < ApplicationRecord
  belongs_to :creator, class_name: "User", foreign_key: :user_id
  has_many :event_users, dependent: :destroy
  has_many :users, through: :event_users
  has_one_attached :photo
  validates :name, presence: true
  validates :age_range, presence: true
  validates :time, presence: true
  validates :people_needed, :people_going, presence: true
  validates :address, :description, presence: true
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
