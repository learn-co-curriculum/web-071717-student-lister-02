class Student < ApplicationRecord
  validates :name, :email, :dob, presence: true
  validates :email, uniqueness: true

  validates(:name, {:exclusion => {:in => ['Drop Table', 'Daniel']}})

  validate :must_be_eighteen

  def must_be_eighteen
    # if self.dob
      if self.dob && (Date.today - 18.years < self.dob)
        errors.add(:dob, 'student cannot be a baby')
      end
    # end
  end


  # validate that the email is present x
  # validate that the email is unique

  # validate that the student is atleast 18 yo
  #(Date.today - 18 years is greater than dob)

  # student name cannot be 'Drop Table'
end
