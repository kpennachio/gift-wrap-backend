class User < ApplicationRecord
  has_many :gifts
  has_many :people
  has_many :events
  has_many :budgets
  has_secure_password

  validates :username, :password, :email, :first_name, :last_name, presence: true

end
