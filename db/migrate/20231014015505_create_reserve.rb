class CreateReserve < ActiveRecord::Migration[7.0]
  def change
    create_table :reserves do |t|
      t.string :name, null: false, comment: "名前"
      t.string :email, null: false, default: "", comment: "メールアドレス"
      t.string :telephone, null: false, default: "", comment: "電話番号"
      t.date :reserve_date1, default: "", comment: "予約候補日第1候補"
      t.date :reserve_date2, default: "", comment: "予約候補日第2候補"
      t.date :reserve_date3, default: "", comment: "予約候補日第3候補"
      t.text :content_inquiry, null: false, default: "", comment: "回答・質問事項"

      t.timestamps
    end
  end
end
