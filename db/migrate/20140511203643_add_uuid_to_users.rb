class AddUuidToUsers < ActiveRecord::Migration[4.2]
  def change
    change_table :users do |t|
      t.string :uuid
    end
  end
end
