class AddPersonRefToPersonGiftIdea < ActiveRecord::Migration[5.2]
  def change
    add_reference :person_gift_ideas, :person, foreign_key: true
  end
end
