class AddEventRefToEventGiftIdeas < ActiveRecord::Migration[5.2]
  def change
    add_reference :event_gift_ideas, :event, foreign_key: true
  end
end
