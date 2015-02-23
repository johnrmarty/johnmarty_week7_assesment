class User < ActiveRecord::Base
	has_secure_password

  validates :user_name, presence: true
  validates :about, presence: true
  validates :password, presence: true

end
