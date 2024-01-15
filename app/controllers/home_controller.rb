class HomeController < ApplicationController
  def top
    @daily_posts_home = DailyPost.where(is_open: true).order(created_at: :desc).limit(3)
  end

  def ocha_dailypost_show
    @daily_post_home = DailyPost.find(params[:id])
  end
end
