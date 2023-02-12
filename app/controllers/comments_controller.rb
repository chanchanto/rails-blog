class CommentsController < ApplicationController
  before_action :authenticate_user!

  def create
    @comment = current_user.comments.create comment_params
    if @comment.save
      flash[:notice] = 'Comment was successfully created.'
      redirect_to post_path(@comment.post)
    else
      flash[:notice] = "Error creating comment: #{@comment.errors}"
    end
  end

  def update
    @comment = Comment.find(params[:id])
    respond_to do |format|
      if @comment.update(comment_params)
        flash[:notice] = 'Comment was successfully updated.'
        redirect_to post_path(@comment.post)
      else
        flash[:notice] = "Error updating comment: #{@comment.errors}"
      end
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    flash[:notice] = 'Comment was successfully destroyed.'
    redirect_to post_path(@comment.post)
  end

  private
    def comment_params
      params.require(:comment).permit(:body).merge(post_id: params[:post_id])
    end
end
