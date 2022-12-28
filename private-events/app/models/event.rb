class Event < ApplicationRecord
  belongs_to :creator, class_name: "User"
  has_many :registrations,  foreign_key: :attended_event_id
  has_many :attendees, through: :registrations, source: :attendee
  
  validates_presence_of :location, :date
end
