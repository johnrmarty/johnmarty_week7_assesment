class Course < ActiveRecord::Base


validates :title, presence: true, allow_blank: false


end
