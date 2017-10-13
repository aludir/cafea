class RenameUsersAndInterestsToInterestesAndUsers < ActiveRecord::Migration[4.2]
  def change
  	rename_table :users_interests, :interests_users
  end
end
