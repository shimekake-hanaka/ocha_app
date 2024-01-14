class RemoveImgMainFromDailyPosts < ActiveRecord::Migration[7.0]
  def change
    remove_column :daily_posts, :img_main, :string
    remove_column :daily_posts, :images_sub, :string
  end
end
