class CreateStaffs < ActiveRecord::Migration
  def change
    create_table :staffs do |t|
      t.string :name
      t.string :mail
      t.string :street
      t.string :city
      t.integer :pin
      t.string :salary
      t.string :qualification
      t.string :designation
      t.string :area
      t.timestamps
    end
  end
end
