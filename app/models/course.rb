class Course < ApplicationRecord
	validates :name, presence: true, length: { minimun:5, maximum:50 }
	validates :short_name, presence: true, length: { minimun:5, maximum:15 }
	validates :description, presence: true, length: { minimun:10, maximum:600 }

	has_many :student_courses
	has_many :students, through: :student_courses
end