class AddVisitedAnnouncementsToUsers < ActiveRecord::Migration
  def change
    change_table(:users) do |t|
      ## To assist in marking announcements as read
      t.datetime :visited_announcements_at
    end
  end
end
