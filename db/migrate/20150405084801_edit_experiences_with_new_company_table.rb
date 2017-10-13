class EditExperiencesWithNewCompanyTable < ActiveRecord::Migration[4.2]
  def change
    remove_column :experiences, :company
    add_reference :experiences, :company, index: true
  end
end
