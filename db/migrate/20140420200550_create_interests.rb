class CreateInterests < ActiveRecord::Migration
  def change
    create_table :interests do |t|
      t.string :title
      t.string :description
      t.integer :initiator

      t.timestamps
    end
  end
end
