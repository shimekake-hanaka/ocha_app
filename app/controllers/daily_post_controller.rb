class DailyPostController < ApplicationController
  def index

    @daily_posts = DailyPost.all
    byebug
    @daily_posts = DailyPost.page(params[:page])
  end
  
  def new
    @daily_post = DailyPost.new
  end

  def create
    @dailyPost = DailyPost.create!(daily_post_params)
    if @dailyPost.save
      redirect_to action: :index
    else
      flash[:alert] = "投稿に失敗しました"
      render :new
    end
  end

  private
  def daily_post_params
    params.require(:daily_post).permit(:title, :content, :img_main, images_sub: [])
  end

  def show
    @daily_post = DailyPost.find(params[:id])
  end

  def edit
    @id = params[:id]
  end

  def update
    @id = params[:id]
    
  end

  def delete
    @id = params[:id]
  end
  
end
