class AddColumnToPackageCustomerTable < ActiveRecord::Migration
  def change
		add_column :customers, :to, :boolean
  end
end
