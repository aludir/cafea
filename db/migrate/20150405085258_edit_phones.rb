class EditPhones < ActiveRecord::Migration
  def change
    change_table :phones do |t|
      t.rename :type, :description
    end
  end
end
