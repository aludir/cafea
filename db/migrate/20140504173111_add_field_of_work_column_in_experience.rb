class AddFieldOfWorkColumnInExperience < ActiveRecord::Migration
  def change
    change_table :experiences do |t|
      t.string :field_of_work
    end
  end
end
