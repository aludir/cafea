class MergeContactTables < ActiveRecord::Migration
  def change
    rename_table :emails, :contacts
    add_reference :contacts, :category, index: true
    rename_column :contacts, :address, :content
    drop_table :phones
  end
end
