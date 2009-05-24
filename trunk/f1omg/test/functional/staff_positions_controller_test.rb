require 'test_helper'

class StaffPositionsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:staff_positions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create staff_position" do
    assert_difference('StaffPosition.count') do
      post :create, :staff_position => { }
    end

    assert_redirected_to staff_position_path(assigns(:staff_position))
  end

  test "should show staff_position" do
    get :show, :id => staff_positions(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => staff_positions(:one).to_param
    assert_response :success
  end

  test "should update staff_position" do
    put :update, :id => staff_positions(:one).to_param, :staff_position => { }
    assert_redirected_to staff_position_path(assigns(:staff_position))
  end

  test "should destroy staff_position" do
    assert_difference('StaffPosition.count', -1) do
      delete :destroy, :id => staff_positions(:one).to_param
    end

    assert_redirected_to staff_positions_path
  end
end
