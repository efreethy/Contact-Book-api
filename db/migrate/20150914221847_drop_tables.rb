class DropTables < ActiveRecord::Migration
  def change
    drop_table :contact_shares
    drop_table :contacts
    drop_table :users
  end
end
