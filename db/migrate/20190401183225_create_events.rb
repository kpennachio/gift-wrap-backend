class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.integer :user_id
      t.string :title
      t.string :occasion
      t.date :date
      t.string :notes
      t.string :registry_link

      t.timestamps
    end
  end
end
