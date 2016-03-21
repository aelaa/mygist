class Web::SessionsController < Web::ApplicationController
  def new
  end

  def create
    user = User.find_by_email(params[:session][:email])
    if user && user.authenticate(params[:session][:password])
      sign_in user
      redirect_to :root
    else
      redirect_to :new_user
    end
  end

  def destroy
    sign_out
    redirect_to :root
  end
end
