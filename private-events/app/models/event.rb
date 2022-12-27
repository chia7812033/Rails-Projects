class Event < ApplicationRecord
  belongs_to :creator, class_name: "User"

  validates_presence_of :location, :date
end
