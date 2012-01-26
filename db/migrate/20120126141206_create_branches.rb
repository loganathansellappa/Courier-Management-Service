class CreateBranches < ActiveRecord::Migration
  def change
    create_table :branches do |t|
			t.string :name
			t.string :address
			t.string :city
      t.string :state
      t.integer :phone
      t.timestamps
    end
  end
end
