class CreatePeople < ActiveRecord::Migration[5.2]
  def change
    create_table :people do |t|
      t.integer :user_id
      t.string :name
      t.string :notes

      t.timestamps
    end
  end
end
