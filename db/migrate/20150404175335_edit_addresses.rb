class EditAddresses < ActiveRecord::Migration
  def change
    add_reference :addresses, :country, index: true
    add_reference :addresses, :city, index: true
    remove_column :addresses, :country
    remove_column :addresses, :city
  end
end
