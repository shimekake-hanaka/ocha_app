class AddDate3ToReserves < ActiveRecord::Migration[7.0]
  def change
    add_column :reserves, :date3, :datetime
  end
end
