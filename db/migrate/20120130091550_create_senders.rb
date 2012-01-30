class CreateSenders < ActiveRecord::Migration
  def change
    create_table :senders do |t|
      t.string :billno
      t.string :name
      t.string :email
      t.string :street
      t.string :city
      t.string :state
      t.integer :pin
      t.timestamps
    end
  end
end
