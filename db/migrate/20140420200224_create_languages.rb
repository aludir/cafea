class CreateLanguages < ActiveRecord::Migration[4.2]
  def change
    create_table :languages do |t|
      t.integer :user_id
      t.string :name
      t.integer :level

      t.timestamps
    end
  end
end
