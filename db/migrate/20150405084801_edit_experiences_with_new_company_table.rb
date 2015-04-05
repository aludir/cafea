class EditExperiencesWithNewCompanyTable < ActiveRecord::Migration
  def change
    remove_column :experiences, :company
    add_reference :experiences, :company, index: true
  end
end
