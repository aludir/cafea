class EditAddress < ActiveRecord::Migration[4.2]
  def change
    change_table :addresses do |t|
      t.rename :type, :description
    end
  end
end
