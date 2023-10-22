class CreateDailyPosts < ActiveRecord::Migration[7.0]
  def change
    create_table :daily_posts do |t|
      t.string :title, null: false, default: "", comment: "タイトル"
      t.text :content, null: false, default: "", comment: "本文"
      t.string :img_main, comment: "メイン画像"
      t.string :images_sub, comment: "サブ画像"

      t.datetime :deleted_at, comment: "論理削除"
      t.timestamps
    end
  end
end
