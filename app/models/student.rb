class Student < ActiveRecord::Base
	has_many :comments
	validates :name, presence: true #, name: true 
	validates :name, length: {minimum: 2}, format: {with: /\A[a-zA-Z]+\z/, message: "only allows letters..." }, uniqueness: { case_sensitive: false }, unless: "name.blank?"
	validates :roll_no, presence: true
	validates :roll_no, numericality: true, unless: "roll_no.blank?"
	validates :student_class, presence: true
	validates :description, presence: true
end
