class CreateAnnouncementsAndTags < ActiveRecord::Migration
  def change
    create_table :announcements_tags, id: false do |t|
      t.belongs_to :announcement
      t.belongs_to :tag
    end
  end
end
