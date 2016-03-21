class Web::PostsController < Web::ApplicationController
  def index
    @posts = Post.all.last(10)
  end

  def show
    @post = Post.find(params[:id])
    @user = @post.user
  end
end

