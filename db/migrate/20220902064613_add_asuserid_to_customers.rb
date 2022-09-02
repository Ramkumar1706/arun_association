class AddAsuseridToCustomers < ActiveRecord::Migration[7.0]
  def change
    add_column :customers, :asuserid, :string
  end
end
