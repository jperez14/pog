class AddAttachmentRecordToDocuments < ActiveRecord::Migration
  def self.up
    change_table :documents do |t|
      t.attachment :record
    end
  end

  def self.down
    drop_attached_file :documents, :record
  end
end
