class DropMailboxer < ActiveRecord::Migration[5.0]
  def change
    drop_table :mailboxer_notifications
  end
end
