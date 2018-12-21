class Coach < ApplicationRecord
  validates :first_name, :last_name, presence: true
  has_many :cohorts

  def coach_full_name
    self.first_name + ' ' + self.last_name
  end
end
