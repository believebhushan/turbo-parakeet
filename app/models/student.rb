class Student < ApplicationRecord
  has_many :submissions
  has_many :assignments, through: :submissions
end
