class AddAttachmentAvatarToOrders < ActiveRecord::Migration[5.0]
  def self.up
    change_table :orders do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :orders, :avatar
  end
end
