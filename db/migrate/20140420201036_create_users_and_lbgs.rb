class CreateUsersAndLbgs < ActiveRecord::Migration
  def change
    create_table :users_lbgs, id: false do |t|
      t.belongs_to :user
      t.belongs_to :lbg
    end
  end
end
