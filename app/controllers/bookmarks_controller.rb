class BookmarksController < ApplicationController
  before_action :authenticate_user!
  before_action :set_post

  def create
    @post.liked_by current_user, vote_scope: "bookmark"
    respond_to do |format|
      format.html{redirect_to post_path(@post), notice: "Bookmarked successfully."}
    end
  end
  
  def destroy
    @post.disliked_by current_user, vote_scope: "bookmark"
    respond_to do |format|
      format.html{redirect_to post_path(@post), notice: "Unbookmarked successfully."}
    end
  end

  private
    def set_post
      @post = Post.find(params[:post_id])
    end
end
