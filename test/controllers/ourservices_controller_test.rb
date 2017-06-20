require 'test_helper'

class OurservicesControllerTest < ActionController::TestCase
  setup do
    @ourservice = ourservices(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ourservices)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ourservice" do
    assert_difference('Ourservice.count') do
      post :create, ourservice: { cost: @ourservice.cost, service_type: @ourservice.service_type }
    end

    assert_redirected_to ourservice_path(assigns(:ourservice))
  end

  test "should show ourservice" do
    get :show, id: @ourservice
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ourservice
    assert_response :success
  end

  test "should update ourservice" do
    patch :update, id: @ourservice, ourservice: { cost: @ourservice.cost, service_type: @ourservice.service_type }
    assert_redirected_to ourservice_path(assigns(:ourservice))
  end

  test "should destroy ourservice" do
    assert_difference('Ourservice.count', -1) do
      delete :destroy, id: @ourservice
    end

    assert_redirected_to ourservices_path
  end
end
