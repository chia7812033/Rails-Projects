class User < ApplicationRecord
  validates_presence_of :username, :email, :password
  validates :password, length: { in: 6..20 }
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
end
