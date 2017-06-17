class User < ApplicationRecord
  before_save { self.email = email.downcase }
  validates :name, presence: true, length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255 }, 
            format: { with: VALID_EMAIL_REGEX },
            uniqueness: { case_sensitive: false }
<<<<<<< HEAD
=======
  has_secure_password
  validates :password, presence: true, length: { minimum: 6 }
>>>>>>> bd249b44ecd7a2e5130c59cd64fdedb013df1e02
end
