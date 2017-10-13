class EditPhones < ActiveRecord::Migration[4.2]
  def change
    change_table :phones do |t|
      t.rename :type, :description
    end
  end
end
