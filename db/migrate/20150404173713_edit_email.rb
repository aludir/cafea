class EditEmail < ActiveRecord::Migration[4.2]
  def change
    change_table :emails do |t|
      t.rename :type, :description
    end
  end
end
