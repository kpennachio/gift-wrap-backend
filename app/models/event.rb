class Event < ApplicationRecord
  belongs_to :user

  has_many :person_gift_events
  has_many :people, through: :person_gift_events
  has_many :gifts, through: :person_gift_events

  has_many :event_gift_ideas
  has_many :gift_ideas, through: :event_gift_ideas

  validates :date, presence: true
  validates :title, presence: true
  validates :title, :uniqueness => { :scope => [:user_id, :date], :case_sensitive => false, message: "^You already have an event with this name on this date." }

  before_destroy :destroy_associated, prepend: true

   private

   def destroy_associated
     self.person_gift_events.destroy_all
     self.event_gift_ideas.destroy_all
   end
end
