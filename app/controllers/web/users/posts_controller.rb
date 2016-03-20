class Web::Users::PostsController < ApplicationController
  def new
    @post = current_user.posts.new
  end

  def create
    form = PostForm.new(Post.new)
    if form.validate params[:post]
      form.save
      redirect_to :root
    else
      redirect_to :new_web_user
    end
  end
end

