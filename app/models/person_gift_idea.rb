class PersonGiftIdea < ApplicationRecord
  belongs_to :person
  belongs_to :gift_idea, foreign_key: "gift_idea_id", class_name: "Gift", optional: true
end
