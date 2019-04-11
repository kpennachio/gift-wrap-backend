class User < ApplicationRecord
  has_many :gifts
  has_many :people
  has_many :events
  has_many :budgets
  has_secure_password
end
