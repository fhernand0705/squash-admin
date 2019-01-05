class Coach < ApplicationRecord
  validates :first_name, :last_name, presence: true
  validates :age, numericality: {less_than: 150}
  validates :salary, presence: true, numericality: {greater_than: 0}
  has_many :cohorts

  def coach_full_name
    self.first_name + ' ' + self.last_name
  end
end
