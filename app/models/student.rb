class Student < ApplicationRecord
	belongs_to :group
	has_many :evaluations
	validates_presence_of :fname, :lname, :dotNum
	validates_uniqueness_of :lname, scope: :dotNum,  message: "Name.# already exists."
end
