class AddTelephoneToReserves < ActiveRecord::Migration[7.0]
  def change
    add_column :reserves, :telephone, :string, null: false, default: ""
  end
end
