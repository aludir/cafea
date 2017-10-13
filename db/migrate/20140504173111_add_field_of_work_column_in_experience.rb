class AddFieldOfWorkColumnInExperience < ActiveRecord::Migration[4.2]
  def change
    change_table :experiences do |t|
      t.string :field_of_work
    end
  end
end
