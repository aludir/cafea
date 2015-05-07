class EditAddressesAndExperiencesTables < ActiveRecord::Migration
  def change
    change_column :addresses, :country_id, :string
    change_column :experiences, :country_id, :string
  end
end
