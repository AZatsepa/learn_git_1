class PostsController < ApplicationController
<<<<<<< HEAD
  
  def index
    @posts = Post.posted
=======

  def index
    @posts = Post.all.order(created_at: :desc)
>>>>>>> 8d3d4eb4114d6af641e39ee0bf1499233babfd6c
  end

  def new
    @post = Post.new
<<<<<<< HEAD
=======
    @posts = current_user.posts
>>>>>>> 8d3d4eb4114d6af641e39ee0bf1499233babfd6c
  end

  def create
    @post = current_user.posts.build(post_params)
    if @post.save
<<<<<<< HEAD
      render 'show', status: 200
    else
      render 'new', status: 303
    end    
  end

  def update
  end

  def edit
  end

  def destroy
=======
      redirect_to posts_path
    else
      render 'new', status: 303
    end
  end

  def update
    @post = current_user.posts.find(params[:id])
    @post.update_attributes(post_params)
    redirect_to posts_path
  end

  def edit
    @post = current_user.posts.find(params[:id])
  end

  def destroy
    @post = current_user.posts.find(params[:id])
    @post.destroy
    redirect_to posts_path
>>>>>>> 8d3d4eb4114d6af641e39ee0bf1499233babfd6c
  end

  private

    def post_params
      params.require(:post).permit(:title, :content, :status)
    end


end
