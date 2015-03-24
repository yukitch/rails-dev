class PostsController < ApplicationController
  def new
  end
  
  def create
    render text: params[:post].inspect
    @post = Post.new(post_params)
    @post.save
    redirect_to @post
  end
  
  private
    def post_params
      params.reuire(:post).permit(:title, :text)
    end
end
