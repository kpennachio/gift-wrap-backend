class Gift < ApplicationRecord
  belongs_to :user

  has_many :person_gift_events
  has_many :people, through: :person_gift_events
  has_many :events, through: :person_gift_events

  has_many :event_gift_ideas, foreign_key: "gift_idea_id"
  has_many :pending_events, through: :event_gift_ideas, source: "event"

  has_many :person_gift_ideas, foreign_key: "gift_idea_id"
  has_many :pending_people, through: :person_gift_ideas, source: "person"

end
