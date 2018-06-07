class User < ApplicationRecord
  has_many :dark_surveys
  has_secure_password

  validates :email, presence: true, uniqueness: true
end
