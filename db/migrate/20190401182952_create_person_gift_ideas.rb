class CreatePersonGiftIdeas < ActiveRecord::Migration[5.2]
  def change
    create_table :person_gift_ideas do |t|

      t.timestamps
    end
  end
end
