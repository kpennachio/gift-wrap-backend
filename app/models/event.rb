class Event < ApplicationRecord
  belongs_to: :user
  has_many: :person_gift_events
  has_many: :event_gift_ideas
  has_many: :people, through: :event_gift_ideas
  
end
