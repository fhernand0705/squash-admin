class Clinic < ApplicationRecord
  # validating attributes
  validates :name, presence: {message: "Name is required"}
  validates :hours, presence: {greater_than: 0}
  has_many :cohorts
end
