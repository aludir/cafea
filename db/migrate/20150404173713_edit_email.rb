class EditEmail < ActiveRecord::Migration
  def change
    change_table :emails do |t|
      t.rename :type, :description
    end
  end
end
