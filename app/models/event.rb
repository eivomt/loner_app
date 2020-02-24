class Event < ApplicationRecord
  belongs_to :creator, class_name: "User", foreign_key: :creator_id
  has_many :events_users, dependent: :destroy
  has_many :users, through: :events_users
  validates :name, presence: true
  validates :age_range, presence: true
  validates :time, presence: true
  validates :people_needed, :people_going, presence: true
  validates :address, :description, presence: true
  has_one_attached :photo
  # geocoded_by :address
  # after_validation :geocode, if: :will_save_change_to_address?
end
