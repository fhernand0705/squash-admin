class Cohort < ApplicationRecord
  # validating attributes
  validates :name, :start_date, :end_date, presence: true
  # add association 'has_many :student'
  # add validation for above association
end
