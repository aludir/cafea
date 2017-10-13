class CreatePhones < ActiveRecord::Migration[4.2]
  def change
    create_table :phones do |t|
      t.string :number
      t.string :type
      t.integer :user_id

      t.timestamps
    end
  end
end
