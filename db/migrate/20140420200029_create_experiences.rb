class CreateExperiences < ActiveRecord::Migration
  def change
    create_table :experiences do |t|
      t.integer :user_id
      t.string :company
      t.string :title
      t.string :location
      t.date :start_date
      t.date :end_date
      t.string :description

      t.timestamps
    end
  end
end
