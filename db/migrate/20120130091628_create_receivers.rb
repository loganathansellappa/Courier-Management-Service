class CreateReceivers < ActiveRecord::Migration
  def change
    create_table :receivers do |t|
      t.string :billno
      t.string :name
      t.string :email
      t.string :street
      t.string :city
      t.string :state
      t.integer :pin
      t.integer :sender_id

      t.timestamps
    end
  end
end
