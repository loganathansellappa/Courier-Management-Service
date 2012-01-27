class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :name
      t.string :email
      t.string :street
      t.string :city
      t.string :pin
      t.string :state
      t.string :customer_type
      t.integer :customer_id
      t.timestamps
    end
  end
end
