class CreateContacts < ActiveRecord::Migration
  def self.up
    create_table :contacts do |t|
      t.string :name
      t.text :address
      t.string :email
      t.decimal :phone_no

      t.timestamps
    end
  end
  def self.down
    drop_table :contacts
  end
end
