class DropMailboxConversations < ActiveRecord::Migration[5.0]
  def change
    drop_table :mailboxer_conversations
  end
end
