require 'test_helper'

class WebsiteControllerTest < ActionController::TestCase
  test "should get admin" do
    get :admin
    assert_response :success
  end

end
