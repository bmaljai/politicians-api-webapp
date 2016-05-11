class CreatePoliticians < ActiveRecord::Migration
  def change
    create_table :politicians do |t|
      t.string :first_name
      t.string :last_name
      t.date :birthdate
      t.integer :total_years_service
      t.boolean :party
      t.string :current_office

      t.timestamps null: true
    end
  end
end
