class AddDate2ToReserves < ActiveRecord::Migration[7.0]
  def change
    add_column :reserves, :date2, :datetime
  end
end
