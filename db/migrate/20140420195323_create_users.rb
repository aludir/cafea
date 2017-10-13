class CreateUsers < ActiveRecord::Migration[4.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :surname
      t.string :old_surname
      t.string :nickname
      t.date :birth_date
      t.integer :gender

      t.timestamps
    end
  end
end
