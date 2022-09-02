class CreateNbas < ActiveRecord::Migration[7.0]
  def change
    create_table :nbas do |t|
      t.references :customer, null: false, foreign_key: true
      t.string :nba_number
      t.timestamp :abs_at
      t.string :indian_application_number
      t.timestamp :filed_at
      t.string :title
      t.integer :deadline_option
      t.string :deadline
      t.timestamp :compiled_at

      t.timestamps
    end
  end
end
