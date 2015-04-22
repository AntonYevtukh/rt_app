class User < ActiveRecord::Base

before_save { self.email = email.downcase }

has_secure_password

VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
VALID_PASSWORD_REGEX = /\A[\w+]/i
validates :name, presence: true, length: { maximum: 64 }
validates :email, presence: true, format: { with: VALID_EMAIL_REGEX },
uniqueness: { case_sensitive: false }
validates :password, length: { minimum: 8}, format: {with: VALID_PASSWORD_REGEX}
validates :password_confirmation, presence: true

end
