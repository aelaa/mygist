class Web::Users::ApplicationController < ActionController::Base
  before_filter do
    signed_in?
  end
end
