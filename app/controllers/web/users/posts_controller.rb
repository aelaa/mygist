class Web::Users::PostsController < Web::Users::ApplicationController
  def new
    @post = current_user.posts.new
  end

  def index
    @user = User.find(params[:user_id])
    @posts = @user.posts
  end

  def create
    form = PostForm.new(Post.new)
    if form.validate params[:post]
      form.user = current_user
      form.save
      redirect_to post_path(id: form.model.id)
    else
      redirect_to :back
    end
  end
end

