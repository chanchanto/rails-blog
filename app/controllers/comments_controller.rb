class CommentsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]

  def create
    @comment = current_user.comments.create comment_params
    if @comment.save
      flash[:notice] = 'Comment was successfully created.'
      redirect_to post_path(@comment.post)
    else
      flash[:notice] = "Error creating comment: #{@comment.errors}"
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to post_path(@post)
  end

  private
    def comment_params
      params.require(:comment).permit(:body).merge(post_id: params[:post_id])
    end
end
