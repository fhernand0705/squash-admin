class Clinic < ApplicationRecord
  validates :name, presence: {message: "Name is required"}
  validates :hours, presence: {greater_than: 0}
end
