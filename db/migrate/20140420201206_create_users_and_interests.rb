class CreateUsersAndInterests < ActiveRecord::Migration
  def change
    create_table :users_interests, id: false do |t|
      t.belongs_to :user
      t.belongs_to :interest
    end
  end
end
