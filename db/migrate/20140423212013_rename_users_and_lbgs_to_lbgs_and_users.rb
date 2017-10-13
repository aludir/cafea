class RenameUsersAndLbgsToLbgsAndUsers < ActiveRecord::Migration[4.2]
  def change
  	rename_table :users_lbgs, :lbgs_users
  end
end
