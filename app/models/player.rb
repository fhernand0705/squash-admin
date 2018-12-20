class Player < ApplicationRecord

  validates :first_name, :last_name, presence: true
  validates :age, numericality: {less_than: 150} # add customized error message
  validates :education, presence: true
  # add 'belongs_to' method + 'optional :true'
end
