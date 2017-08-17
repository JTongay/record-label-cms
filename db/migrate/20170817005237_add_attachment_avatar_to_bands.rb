class AddAttachmentAvatarToBands < ActiveRecord::Migration
  def self.up
    change_table :bands do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :bands, :avatar
  end
end
