class EditAddresses < ActiveRecord::Migration[4.2]
  def change
    add_reference :addresses, :country, index: true
    add_reference :addresses, :city, index: true
    remove_column :addresses, :country
    remove_column :addresses, :city
  end
end
