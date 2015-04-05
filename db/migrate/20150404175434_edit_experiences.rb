class EditExperiences < ActiveRecord::Migration
  def change
    add_reference :experiences, :country, index: true
    add_reference :experiences, :city, index: true
    remove_column :experiences, :location
  end
end
