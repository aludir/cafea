class CreateEmails < ActiveRecord::Migration[4.2]
  def change
    create_table :emails do |t|
      t.string :address
      t.string :type
      t.integer :user_id

      t.timestamps
    end
  end
end
