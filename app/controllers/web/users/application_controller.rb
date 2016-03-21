class Web::Users::ApplicationController < Web::ApplicationController
  before_filter do
    redirect_to new_session_path unless signed_in?
  end
end
