class CreateGifts < ActiveRecord::Migration[5.2]
  def change
    create_table :gifts do |t|
      t.integer :user_id
      t.string :name
      t.string :notes
      t.string :image
      t.decimal :list_price, precision: 12, scale: 2
      t.string :store
      t.string :link
      t.string :age_range

      t.timestamps
    end
  end
end
