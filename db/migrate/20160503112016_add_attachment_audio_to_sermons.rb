class AddAttachmentAudioToSermons < ActiveRecord::Migration
  def self.up
    change_table :sermons do |t|
      t.attachment :audio
    end
  end

  def self.down
    remove_attachment :sermons, :audio
  end
end
