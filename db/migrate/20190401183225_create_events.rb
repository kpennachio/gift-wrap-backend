class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.references :user, index: true, foreign_key: true
      t.string :title
      t.string :occasion
      t.date :date
      t.string :notes
      t.string :registry_link

      t.timestamps
    end
  end
end
