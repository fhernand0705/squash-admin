class Player < ApplicationRecord

  validates :first_name, :last_name, presence: true
  validates :age, numericality: {less_than: 150} # add customized error message
  validates :education, presence: true
  has_and_belongs_to_many :cohorts, optional: true

  def player_full_name
    self.first_name + ' ' + self.last_name
  end
end
