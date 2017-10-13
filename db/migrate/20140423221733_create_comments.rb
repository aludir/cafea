class CreateComments < ActiveRecord::Migration[4.2]
  def change
    create_table :comments do |t|
      t.integer :user_id
      t.string :body
      t.integer :announcement_id

      t.timestamps
    end
  end
end
