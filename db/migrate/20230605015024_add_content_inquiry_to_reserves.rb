class AddContentInquiryToReserves < ActiveRecord::Migration[7.0]
  def change
    add_column :reserves, :content_inquiry, :string, null: false, default: ""
  end
end
