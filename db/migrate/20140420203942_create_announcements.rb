class CreateAnnouncements < ActiveRecord::Migration[4.2]
  def change
    create_table :announcements do |t|
      t.integer :user_id
      t.string :title
      t.string :body

      t.timestamps
    end
  end
end
