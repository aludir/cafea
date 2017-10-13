class MergeContactTables < ActiveRecord::Migration[4.2]
  def change
    rename_table :emails, :contacts
    add_reference :contacts, :category, index: true
    rename_column :contacts, :address, :content
    drop_table :phones
  end
end
