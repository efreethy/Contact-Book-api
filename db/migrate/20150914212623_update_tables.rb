class UpdateTables < ActiveRecord::Migration
  def change
    drop_table :users
    create_table :users do |t|
      t.string :username, null: false, unique: true

      t.timestamps
    end

    create_table :contacts do |t|
      t.string :name, null: false
      t.string :email, null: false
      t.integer :user_id, null: false

      t.timestamps
    end

    add_index :contacts, [:user_id, :email], unique: true
    add_index  :contacts, :user_id
    add_foreign_key :contacts, :users


    create_table :contact_shares do |t|
      t.integer :user_id, null: false
      t.integer :contact_id, null: false

      t.timestamps
    end

    add_index  :contact_shares, :user_id
    add_index  :contact_shares, :contact_id
    add_index :contact_shares, [:user_id, :contact_id], unique: true
    add_foreign_key :contact_shares, :users
    add_foreign_key :contact_shares, :contacts
  end
end
