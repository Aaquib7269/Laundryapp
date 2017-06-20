require 'test_helper'

class PayrequestsControllerTest < ActionController::TestCase
  setup do
    @payrequest = payrequests(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:payrequests)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create payrequest" do
    assert_difference('Payrequest.count') do
      post :create, payrequest: { Date: @payrequest.Date, Time: @payrequest.Time }
    end

    assert_redirected_to payrequest_path(assigns(:payrequest))
  end

  test "should show payrequest" do
    get :show, id: @payrequest
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @payrequest
    assert_response :success
  end

  test "should update payrequest" do
    patch :update, id: @payrequest, payrequest: { Date: @payrequest.Date, Time: @payrequest.Time }
    assert_redirected_to payrequest_path(assigns(:payrequest))
  end

  test "should destroy payrequest" do
    assert_difference('Payrequest.count', -1) do
      delete :destroy, id: @payrequest
    end

    assert_redirected_to payrequests_path
  end
end
