class Web::Posts::CommentsController < Web::Users::ApplicationController
  def create
    form = CommentForm.new(Comment.new)
    form.user = current_user
    form.post = Post.find(params[:post_id])
    if form.validate params[:comment]
      form.save
      redirect_to post_path(id: form.model.post_id)
    else
      redirect_to :back
    end
  end
end

