class CreateBudgets < ActiveRecord::Migration[5.2]
  def change
    create_table :budgets do |t|
      t.integer :user_id
      t.integer :year
      t.decimal :budget, precision: 12, scale: 2

      t.timestamps
    end
  end
end
