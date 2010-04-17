require 'test_helper'

class SharedInterestPointsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:shared_interest_points)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create shared_interest_point" do
    assert_difference('SharedInterestPoint.count') do
      post :create, :shared_interest_point => { }
    end

    assert_redirected_to shared_interest_point_path(assigns(:shared_interest_point))
  end

  test "should show shared_interest_point" do
    get :show, :id => shared_interest_points(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => shared_interest_points(:one).to_param
    assert_response :success
  end

  test "should update shared_interest_point" do
    put :update, :id => shared_interest_points(:one).to_param, :shared_interest_point => { }
    assert_redirected_to shared_interest_point_path(assigns(:shared_interest_point))
  end

  test "should destroy shared_interest_point" do
    assert_difference('SharedInterestPoint.count', -1) do
      delete :destroy, :id => shared_interest_points(:one).to_param
    end

    assert_redirected_to shared_interest_points_path
  end
end
