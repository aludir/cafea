class CreateLbgs < ActiveRecord::Migration[4.2]
  def change
    create_table :lbgs do |t|
      t.string :name

      t.timestamps
    end
  end
end
