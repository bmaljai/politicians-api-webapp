class AddPoliticianIdToDonor < ActiveRecord::Migration
  def change
    add_column :donors, :politician_id, :integer
  end
end
