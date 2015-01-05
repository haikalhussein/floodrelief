require 'test_helper'

class ReliefCentresControllerTest < ActionController::TestCase
  setup do
    @relief_centre = relief_centres(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:relief_centres)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create relief_centre" do
    assert_difference('ReliefCentre.count') do
      post :create, relief_centre: { address: @relief_centre.address, gps_coordinate: @relief_centre.gps_coordinate, name: @relief_centre.name }
    end

    assert_redirected_to relief_centre_path(assigns(:relief_centre))
  end

  test "should show relief_centre" do
    get :show, id: @relief_centre
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @relief_centre
    assert_response :success
  end

  test "should update relief_centre" do
    patch :update, id: @relief_centre, relief_centre: { address: @relief_centre.address, gps_coordinate: @relief_centre.gps_coordinate, name: @relief_centre.name }
    assert_redirected_to relief_centre_path(assigns(:relief_centre))
  end

  test "should destroy relief_centre" do
    assert_difference('ReliefCentre.count', -1) do
      delete :destroy, id: @relief_centre
    end

    assert_redirected_to relief_centres_path
  end
end
