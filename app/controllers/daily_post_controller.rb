class DailyPostController < ApplicationController
  def index
    @daily_posts = DailyPost.all
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

    # @daily_post_subImages = []

    # has_one_attached :daily_post do |attachable|
    #   @daily_post_subImages = attachable.variant :images_sub, resize_to_limit: [100, 100]
  # end
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
