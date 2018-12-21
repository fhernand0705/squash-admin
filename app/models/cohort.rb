class Cohort < ApplicationRecord
  # validating attributes
  validates :name, :start_date, :end_date, presence: true
  has_and_belongs_to_many :players 
end
