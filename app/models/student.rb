class Student < ApplicationRecord

	before_save { self.email = email.downcase }

	validates :name,
			   presence: true,
			   uniqueness:{ case_sensitive: false },
			   length: { minimun:5, maximum:50 }

	VALID_EMAIL_REGEX = /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i

	validates :email,
			   presence:true, uniqueness:{ case_sensitive: false },
			   format: { with: VALID_EMAIL_REGEX },
			   length: { maximum:105 }

	has_secure_password

	has_many :student_courses
	has_many :courses, through: :student_courses
end