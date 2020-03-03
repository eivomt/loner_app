class Event < ApplicationRecord
  geocoded_by :address
  has_one_attached :photo

  belongs_to :creator, class_name: "User", foreign_key: :creator_id

  has_many :event_users, dependent: :destroy
  has_many :users, through: :event_users

  validates :name, presence: true
  validates :time, presence: true
  validates :people_needed, :people_going, presence: true
  validates :address, :description, presence: true

  after_validation :geocode, if: :will_save_change_to_address?

  def marker
    [{
      lat: latitude,
      lng: longitude,
      image_url: ApplicationController.helpers.asset_url('marker-stroked-15.svg'),
      image_url: ApplicationController.helpers.asset_url('heart-15.svg')
    }]
  end
end
