class User < ActiveRecord::Base
	has_secure_password

  validates :user_name, presence: true, allow_blank: false
  validates :about, presence: true, allow_blank: false
  validates :password, presence: true

end
