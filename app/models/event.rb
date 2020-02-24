class Event < ApplicationRecord
  belongs_to :creator, class_name: "User", foreign_key: :user_id
  has_many :userevents, dependent: :destroy
  has_many :users, through: :userevents
  has_many_attached :img_url
  validates :name, presence: true
  validates :age_range, presence: true
  validates :datetime, presence: true
  validates :people_needed, :people_going, presence: true
  validates :address, :description, presence: true
  # geocoded_by :address
  # after_validation :geocode, if: :will_save_change_to_address?
end
