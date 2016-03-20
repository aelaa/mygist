require 'test_helper'

class Web::UsersControllerTest < ActionController::TestCase
  test "should get new" do
    get :new
    assert_response :success
  end

  test "should get show" do
    user = create :user
    get :show, id: user.id
    assert_response :success
  end

  test "should post create" do
    user = attributes_for :user
    post :create, user: user
    assert_redirected_to :root
    assert User.find_by_email(user[:email])
  end

end
