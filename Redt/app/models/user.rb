class User < ActiveRecord::Base
	has_secure_password
  has_many :links

   validates :email, uniqueness: true, presence: true
  validates :name, presence: true
validates :password_digest, presence: true
end
