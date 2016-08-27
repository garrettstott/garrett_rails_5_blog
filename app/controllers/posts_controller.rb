class PostsController < ApplicationController
  before_action :authenticate_user!, only: [:like, :new, :edit, :destroy, :update]

  def like
    @post = Post.find(params[:id])
    @post.likes += 1
    @post.save
    redirect_to :back
  end

  def show
    @post = Post.find(params[:id])
    @blogger = User.find(@post.user_id)
    @new_comment = Comment.new
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.user_id = current_user.id
    if @post.save
      flash[:notice] = 'Post Created Successfully!'
      redirect_to root_path
    else
      flash[:alert] = 'Post Was Not Saved!'
      render :new
    end
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    if @post.update(post_params)
      flash[:notice] = 'Post Updated Successfully!'
      redirect_to root_path
    else
      flash[:alert] = 'Post Was Not Saved!'
      render :edit
    end
  end

  def destroy
    @post = Post.find(params[:id])
    if @post.destroy
      flash[:notice] = 'Post "#{@post.title}" Has Been Deleted!'
      redirect_to root_path
    else
      flash[:alert] = 'Post Was Not Deleted!'
    end
  end

  private

  def post_params
    params.require(:post).permit(:title, :body, :user_id)
  end
end
