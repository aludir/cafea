class EditAddressesAndExperiencesTables < ActiveRecord::Migration[4.2]
  def change
    change_column :addresses, :country_id, :string
    change_column :experiences, :country_id, :string
  end
end
