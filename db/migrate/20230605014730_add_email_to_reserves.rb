class AddEmailToReserves < ActiveRecord::Migration[7.0]
  def change
    add_column :reserves, :email, :string, null: false, default: ""
  end
end
