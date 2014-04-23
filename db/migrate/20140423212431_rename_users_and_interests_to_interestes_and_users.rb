class RenameUsersAndInterestsToInterestesAndUsers < ActiveRecord::Migration
  def change
  	rename_table :users_interests, :interests_users
  end
end
