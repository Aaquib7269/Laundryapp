require 'test_helper'

class WorkstaionsControllerTest < ActionController::TestCase
  setup do
    @workstaion = workstaions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:workstaions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create workstaion" do
    assert_difference('Workstaion.count') do
      post :create, workstaion: { station_name: @workstaion.station_name }
    end

    assert_redirected_to workstaion_path(assigns(:workstaion))
  end

  test "should show workstaion" do
    get :show, id: @workstaion
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @workstaion
    assert_response :success
  end

  test "should update workstaion" do
    patch :update, id: @workstaion, workstaion: { station_name: @workstaion.station_name }
    assert_redirected_to workstaion_path(assigns(:workstaion))
  end

  test "should destroy workstaion" do
    assert_difference('Workstaion.count', -1) do
      delete :destroy, id: @workstaion
    end

    assert_redirected_to workstaions_path
  end
end
