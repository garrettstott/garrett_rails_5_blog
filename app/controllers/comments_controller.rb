class CommentsController < ApplicationController

  def create
    @comment = Comment.new(comment_params)
    @post = Post.find(params[:id])
    @comment.post_id = @post.id
    @comment.user_id = current_user.id
    if @comment.save
      flash[:notice] = 'Comment Saved Successfully!'
      redirect_to post_path(@post)
    else
      flash[:alert] = 'Comment Was Not Saved!'
      redirect_to post_path(@post)
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:body, :post_id)
  end
end
