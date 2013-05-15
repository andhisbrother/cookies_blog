class CommentsController < ApplicationController
  
  def new
  	@post = Post.find params[:post_id]
  	@comment = @post.comments.new
  end

  def create
  	@post = Post.find params[:post_id]
  	@comment = @post.comments.build params[:comment]
  	if @comment.save
  		redirect_to post_path(@post)
  	else
  		render :new
  	end
  end

end
