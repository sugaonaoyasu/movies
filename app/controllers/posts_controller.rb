class PostsController < ApplicationController
  def show
    @post =Post.find(params[:id])
  end

  def index
    @posts =Post.all.order(created_at: :desc)
    @post =Post.new
  end

  def new
    @post =Post.new
  end

  def edit
    @post =Post.find(params[:id])
  end
  
  def update
    post = Post.find(params[:id])
    post.update(post_params)
    redirect_to post_path(post)
  end
  
  def create
    @post =Post.new(post_params)
    @post.user_id = current_user.id
    @post.save
    redirect_to posts_path
  
  end
  
  def destroy
    @post =Post.find(params[:id])
    @post.destroy
    redirect_to posts_path
  end
  
  
  
   private
    def post_params
      params.require(:post).permit(:title, :category, :body)
    end
end