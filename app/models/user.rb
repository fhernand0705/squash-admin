class User < ApplicationRecord
  before_save {self.email = email.downcase}
  validates :first_name, :last_name, presence: true
  validates :email, presence: true

  has_secure_password
  validates :password, presence: true

  def user_name
    self.first_name + ' ' + self.last_name
  end
end
