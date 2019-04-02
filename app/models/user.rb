class User < ApplicationRecord
  has_many :gifts
  has_many :people
  has_many :events 
end
