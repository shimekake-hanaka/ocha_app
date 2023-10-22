class CreateContacts < ActiveRecord::Migration[7.0]
  def change
    create_table :contacts do |t|
      t.string :name, null: false, comment: "名前"
      t.string :email, null: false, default: "", comment: "メールアドレス"
      t.string :telephone, null: false, default: "", comment: "電話番号"
      t.text :content_inquiry, null: false, default: "", comment: "お問い合わせ内容"

      t.timestamps
    end
  end
end
