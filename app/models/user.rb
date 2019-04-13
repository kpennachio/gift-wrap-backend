class User < ApplicationRecord
  has_many :gifts
  has_many :people
  has_many :events
  has_many :budgets
  has_many :person_gift_events, through: :events
  has_many :person_gift_ideas, through: :people
  has_many :event_gift_ideas, through: :events
  has_secure_password

  validates :username, :password, :email, :first_name, :last_name, presence: true
  validates :username, :email, uniqueness: true

  before_destroy :destroy_associated, prepend: true

   private

   def destroy_associated
     self.gifts.destroy_all
     self.people.destroy_all
     self.events.destroy_all
     self.budgets.destroy_all
   end

end
