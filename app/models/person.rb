class Person < ApplicationRecord
  belongs_to :user

  has_many :person_gift_events
  has_many :gifts, through: :person_gift_events
  has_many :events, through: :person_gift_events

  has_many :person_gift_ideas
  has_many :gift_ideas, through: :person_gift_ideas

  validates :name, presence: true

end
