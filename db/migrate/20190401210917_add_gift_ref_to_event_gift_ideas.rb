class AddGiftRefToEventGiftIdeas < ActiveRecord::Migration[5.2]
  def change
    add_column :event_gift_ideas, :gift_idea_id, :integer, index: true
    add_foreign_key :event_gift_ideas, :gifts, column: :gift_idea_id
  end
end
