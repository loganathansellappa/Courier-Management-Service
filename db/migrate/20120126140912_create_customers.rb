class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :name
      t.string :mail
      t.string :street
      t.string :city
      t.string :pin
      t.string :state
      t.boolean :from
      t.timestamps
    end
  end
end
