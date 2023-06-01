class AddContentInquiryToContacts < ActiveRecord::Migration[7.0]
  def change
    add_column :contacts, :content_inquiry, :string, null: false, default: ""
  end
end
