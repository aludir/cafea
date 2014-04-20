class CreateLbgs < ActiveRecord::Migration
  def change
    create_table :lbgs do |t|
      t.string :name

      t.timestamps
    end
  end
end
