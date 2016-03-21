class Web::PostsController < Web::ApplicationController
  def index
    @posts = Post.all.last(10)
  end

  def show
    @post = Post.find(params[:id])
    @author = @post.user
    @comments = @post.comments
    @new_comment = CommentForm.new(Comment.new)
  end
end

