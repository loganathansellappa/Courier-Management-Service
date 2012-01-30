class CreatePackages < ActiveRecord::Migration
  def change
    create_table :packages do |t|
      t.integer :sender_id
			t.string :type
      t.string :weight
      t.string :amount
			t.date :received_date
      t.timestamps
    end
  end
end
