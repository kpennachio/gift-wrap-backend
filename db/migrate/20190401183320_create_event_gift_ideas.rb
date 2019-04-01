class CreateEventGiftIdeas < ActiveRecord::Migration[5.2]
  def change
    create_table :event_gift_ideas do |t|
      t.integer :event_id

      t.timestamps
    end
  end
end
