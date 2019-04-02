class EventGiftIdea < ApplicationRecord
  belongs_to :event
  belongs_to :gift_idea, foreign_key: "gift_idea_id", class_name: "Gift", optional: true
end
