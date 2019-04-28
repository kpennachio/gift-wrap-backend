class AddEmailReminderToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :email_reminder, :integer
  end
end
