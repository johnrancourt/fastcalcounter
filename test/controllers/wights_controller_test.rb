require 'test_helper'

class WightsControllerTest < ActionController::TestCase
  setup do
    @wight = wights(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:wights)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create wight" do
    assert_difference('Wight.count') do
      post :create, wight: { user_id: @wight.user_id, wegiht: @wight.wegiht }
    end

    assert_redirected_to wight_path(assigns(:wight))
  end

  test "should show wight" do
    get :show, id: @wight
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @wight
    assert_response :success
  end

  test "should update wight" do
    patch :update, id: @wight, wight: { user_id: @wight.user_id, wegiht: @wight.wegiht }
    assert_redirected_to wight_path(assigns(:wight))
  end

  test "should destroy wight" do
    assert_difference('Wight.count', -1) do
      delete :destroy, id: @wight
    end

    assert_redirected_to wights_path
  end
end
