class PostsController < ApplicationController
  before_action :private_access, except: [:index, :show]

  def index
    @posts = Post.all.order('created_at DESC')
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.user = current_user
    if @post.save 
      flash[:success] = "Post successully published"
      redirect_to posts_path 
    else
      render :new
    end
  end

  def show
    @post = Post.find(params[:id])
  end

  def edit
    @post = Post.find(params[:id])
  end
  
  def update
    @post = Post.find(params[:id])
    if @post.update(post_params)
      flash[:success] = "Post modified successfully"
      redirect_to posts_path
    else
      render :edit
    end
  end
   
  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    flash[:info] = "Post successfully deleted"
    redirect_to posts_path 
  end
    
  private
    def post_params
      params.require(:post).permit(:title, :content)
    end
end
