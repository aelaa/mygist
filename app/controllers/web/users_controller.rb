class Web::UsersController < ApplicationController
  def new
  end

  def create
    form = UserForm.new(User.new)
    if form.validate params[:user]
      form.save
      # sign_in :user
      redirect_to :root
    else
      redirect_to :new_web_user
    end
  end

  def show
  end
end
