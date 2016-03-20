require 'test_helper'

class Web::Users::PostsControllerTest < ActionController::TestCase
  setup do
    @user = create :user
    sign_in @user
  end

  test "should get new" do
    get :new, user_id: @user
    assert_response :success
  end


  test "should post create" do
    new_post = attributes_for :post, user: @user
    post :create, post: new_post, user_id: @user
    assert_redirected_to :root
    assert Post.find_by_text(new_post[:text])
  end
end
