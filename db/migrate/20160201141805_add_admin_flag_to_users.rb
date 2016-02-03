class AddAdminFlagToUsers < ActiveRecord::Migration
  def change
  	#default: false and null: false, ensures the migration won't give us incorrect
  	#return values when we check for the flag.
    add_column :users, :admin, :boolean, default: false, null: false
  end
end
