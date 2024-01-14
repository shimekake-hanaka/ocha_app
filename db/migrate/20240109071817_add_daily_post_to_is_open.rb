class AddDailyPostToIsOpen < ActiveRecord::Migration[7.0]
  def change
    add_column :daily_posts, :is_open, :boolean, default: false, null: false
  end
end
