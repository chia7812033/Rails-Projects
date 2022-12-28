class User < ApplicationRecord
  has_many :created_events, foreign_key: :creator_id, class_name: "Event"
  has_many :attended_event, through: :registations
  has_many :registrations, foreign_key: :attendee_id

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end