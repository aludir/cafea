class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :street
      t.string :number
      t.string :zip
      t.string :city
      t.string :country
      t.string :type
      t.integer :user_id

      t.timestamps
    end
  end
end
