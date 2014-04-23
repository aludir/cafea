class RenameUsersAndLbgsToLbgsAndUsers < ActiveRecord::Migration
  def change
  	rename_table :users_lbgs, :lbgs_users
  end
end
