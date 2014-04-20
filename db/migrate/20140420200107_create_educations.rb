class CreateEducations < ActiveRecord::Migration
  def change
    create_table :educations do |t|
      t.integer :user_id
      t.string :school
      t.date :start_date
      t.date :end_date
      t.string :field
      t.string :grade
      t.string :activities
      t.string :description

      t.timestamps
    end
  end
end
