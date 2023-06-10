class AddDate1ToReserves < ActiveRecord::Migration[7.0]
  def change
    add_column :reserves, :date1, :datetime, default: ""
  end
end
