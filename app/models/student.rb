class Student < ApplicationRecord
	belongs_to :group
	has_many :evaluations
	has_many :aboutStudents
	has_many :submittedStudents
end
