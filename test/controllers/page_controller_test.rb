require 'test_helper'

class PageControllerTest < ActionController::TestCase
  test "should get NewUser" do
    get :NewUser
    assert_response :success
  end

end
