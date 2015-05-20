class AddAttachmentAvatarToWorkouts < ActiveRecord::Migration
  def self.up
    change_table :workouts do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :workouts, :avatar
  end
end
