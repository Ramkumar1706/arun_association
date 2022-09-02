class CreateCustomers < ActiveRecord::Migration[7.0]
  def change
    create_table :customers do |t|
      t.string :name
      t.string :address_line_1
      t.string :address_line_2
      t.string :city
      t.string :state
      t.string :country
      t.string :telephone
      t.integer :customer_type

      t.timestamps
    end
  end
end
