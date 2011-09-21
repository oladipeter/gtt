require 'test_helper'

class Uploader::StartControllerTest < ActionController::TestCase
  test "should get get_request" do
    get :get_request
    assert_response :success
  end

  test "should get start_upload" do
    get :start_upload
    assert_response :success
  end

  test "should get finished_upload" do
    get :finished_upload
    assert_response :success
  end

end
