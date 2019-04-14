class Person < ApplicationRecord
  belongs_to :user

  has_many :person_gift_events
  has_many :gifts, through: :person_gift_events
  has_many :events, through: :person_gift_events

  has_many :person_gift_ideas
  has_many :gift_ideas, through: :person_gift_ideas

  validates :name, presence: true
  validates :name, :uniqueness => {:scope=>:user_id, message: "^oops you already have this person" }

  before_destroy :destroy_associated, prepend: true

   private

   def destroy_associated
     self.person_gift_events.destroy_all
     self.person_gift_ideas.destroy_all

   end
end
