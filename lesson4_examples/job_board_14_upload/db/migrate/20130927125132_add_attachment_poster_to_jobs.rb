class AddAttachmentPosterToJobs < ActiveRecord::Migration
  def self.up
    change_table :jobs do |t|
      t.attachment :poster
    end
  end

  def self.down
    drop_attached_file :jobs, :poster
  end
end
