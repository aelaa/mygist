class Web::UsersController < Web::ApplicationController
  def new
    @user = UserForm.new(User.new)
  end

  def index
    @users = User.all
  end

  def create
    form = UserForm.new(User.new)
    if form.validate params[:user]
      user = form.save
      sign_in user
      redirect_to :root
    else
      redirect_to :new_user
    end
  end

  def show
    @user = User.find(params[:id])
  end
end
