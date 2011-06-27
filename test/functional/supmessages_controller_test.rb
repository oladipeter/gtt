require 'test_helper'

class SupmessagesControllerTest < ActionController::TestCase
  setup do
    @supmessage = supmessages(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:supmessages)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create supmessage" do
    assert_difference('Supmessage.count') do
      post :create, :supmessage => @supmessage.attributes
    end

    assert_redirected_to supmessage_path(assigns(:supmessage))
  end

  test "should show supmessage" do
    get :show, :id => @supmessage.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @supmessage.to_param
    assert_response :success
  end

  test "should update supmessage" do
    put :update, :id => @supmessage.to_param, :supmessage => @supmessage.attributes
    assert_redirected_to supmessage_path(assigns(:supmessage))
  end

  test "should destroy supmessage" do
    assert_difference('Supmessage.count', -1) do
      delete :destroy, :id => @supmessage.to_param
    end

    assert_redirected_to supmessages_path
  end
end
