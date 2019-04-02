class CreatePersonGiftEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :person_gift_events do |t|
      t.references :person, index: true, foreign_key: true
      t.references :event, index: true, foreign_key: true
      t.references :gift, index: true, foreign_key: true
      t.decimal :gift_actual_cost, precision: 12, scale: 2
      t.integer :price_min
      t.integer :price_max

      t.timestamps
    end
  end
end
