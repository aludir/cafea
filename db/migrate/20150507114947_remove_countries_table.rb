class RemoveCountriesTable < ActiveRecord::Migration[4.2]
  def change
    drop_table :countries
  end
end
