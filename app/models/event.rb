class Event < ApplicationRecord
  has_many :attendees
  geocoded_by :address
  after_validation :geocode, if: :address_changed?
end
