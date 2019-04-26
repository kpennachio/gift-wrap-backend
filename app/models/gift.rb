class Gift < ApplicationRecord
  belongs_to :user

  has_many :person_gift_events
  has_many :people, through: :person_gift_events
  has_many :events, through: :person_gift_events

  has_many :event_gift_ideas, foreign_key: "gift_idea_id"
  has_many :pending_events, through: :event_gift_ideas, source: "event"

  has_many :person_gift_ideas, foreign_key: "gift_idea_id"
  has_many :pending_people, through: :person_gift_ideas, source: "person"

  validates :name, presence: true
  validates :name, uniqueness: {message: "^You already have a gift with this name." }

  before_destroy :destroy_associated, prepend: true

   private

   def destroy_associated
     self.person_gift_events.destroy_all
     self.person_gift_ideas.destroy_all
     self.event_gift_ideas.destroy_all
   end
end
