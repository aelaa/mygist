require 'test_helper'

class Web::PostsControllerTest < ActionController::TestCase
  test "should get show" do
    user = create :user
    post = create :post, user: user
    get :show, id: post.id
    assert_response :success
  end
end
