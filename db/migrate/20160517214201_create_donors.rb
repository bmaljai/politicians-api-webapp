class CreateDonors < ActiveRecord::Migration
  def change
    create_table :donors do |t|
      t.string :name
      t.decimal :contribution, precision: 10, scale: 2

      t.timestamps null: true
    end
  end
end
