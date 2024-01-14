class DailyPostController < ApplicationController
  def index
    @daily_posts = DailyPost.all
    @is_open_count = @daily_posts.where(is_open: true).count
    @daily_posts = DailyPost.order(created_at: :desc).page(params[:page]).per(5)
  end
  
  def new
    @daily_post = DailyPost.new
  end

  def create
    @daily_Post = DailyPost.new(daily_post_params)
    if @daily_Post.save
      redirect_to action: :index
    else
      flash[:alert] = "投稿に失敗しました"
      render :new
    end
  end

  def show
    @daily_post = DailyPost.find(params[:id])
  end

  def edit
    @daily_post = DailyPost.find(params[:id])
  end

  def image_edit
    @daily_post = DailyPost.find(params[:id])
  end

  def image_delete
    @daily_post = DailyPost.find(params[:id])
    @images_sub_id = []
    @image_sub_hash = {}
    if daily_post_imagesSub[:images_sub] != nil
      @daily_post.images_sub.each do |image|
        if daily_post_imagesSub.has_value?("")
          @daily_post.images_sub.purge
          flash[:success] = "削除しました"
          redirect_to action: :show
        elsif daily_post_imagesSub[:images_sub].include?(image.signed_id)
          next
        else
          @images_sub_id.push(image.signed_id)
        end
      end
      @image_sub_hash = {"images_sub" => @images_sub_id}
      @daily_post.update(@image_sub_hash)
      flash[:success] = "削除しました"
      redirect_to action: :show
    else
      flash[:alert] = "削除に失敗しました"
      render :image_edit
    end
  end

  def update
    @daily_post = DailyPost.find(params[:id])
    if @daily_post.update(daily_post_params)
      flash[:success] = "編集しました"
      redirect_to action: :show
    else
      flash[:alert] = "更新に失敗しました"
      render :edit
    end
  end

  def is_open
    @daily_post = DailyPost.find(params[:id])
    # "非表示にしました"
    if @daily_post.is_open
      @daily_post.update(is_open: false)
    # "表示にしました"
    else
      @daily_post.update(is_open: true)
    end
    redirect_to action: :index
  end
  
  private
  def daily_post_params
    params.require(:daily_post).permit(:title, :content, :img_main, images_sub: [])
  end

  def daily_post_imagesSub
    params.permit(images_sub: [])
  end
  
end
