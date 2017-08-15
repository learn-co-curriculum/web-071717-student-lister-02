class Student < ApplicationRecord
  validates :name, presence: true

  # validate that the email is present
  # validate that the email is unique

  # validate that the student is atleast 18 yo
  #(Date.today - 18 years is greater than dob)

  # student name cannot be 'Drop Table'
end
