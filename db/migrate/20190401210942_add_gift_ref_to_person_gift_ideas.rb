class AddGiftRefToPersonGiftIdeas < ActiveRecord::Migration[5.2]
  def change
    add_column :person_gift_ideas, :gift_idea_id, :integer, index: true
    add_foreign_key :person_gift_ideas, :gifts, column: :gift_idea_id
  end
end
