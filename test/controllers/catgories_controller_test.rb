require 'test_helper'

class CatgoriesControllerTest < ActionController::TestCase
  setup do
    @catgory = catgories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:catgories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create catgory" do
    assert_difference('Catgory.count') do
      post :create, catgory: { category_type: @catgory.category_type }
    end

    assert_redirected_to catgory_path(assigns(:catgory))
  end

  test "should show catgory" do
    get :show, id: @catgory
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @catgory
    assert_response :success
  end

  test "should update catgory" do
    patch :update, id: @catgory, catgory: { category_type: @catgory.category_type }
    assert_redirected_to catgory_path(assigns(:catgory))
  end

  test "should destroy catgory" do
    assert_difference('Catgory.count', -1) do
      delete :destroy, id: @catgory
    end

    assert_redirected_to catgories_path
  end
end
