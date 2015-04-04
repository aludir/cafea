class EditAddress < ActiveRecord::Migration
  def change
    change_table :addresses do |t|
      t.rename :type, :description
    end
  end
end
