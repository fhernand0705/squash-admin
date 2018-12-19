class Cohort < ApplicationRecord
  # validating attributes
  validates :name, :start_date, :end_date, presence: true

end
