require 'test_helper'

class RealStaffsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:real_staffs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create real_staff" do
    assert_difference('RealStaff.count') do
      post :create, :real_staff => { }
    end

    assert_redirected_to real_staff_path(assigns(:real_staff))
  end

  test "should show real_staff" do
    get :show, :id => real_staffs(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => real_staffs(:one).to_param
    assert_response :success
  end

  test "should update real_staff" do
    put :update, :id => real_staffs(:one).to_param, :real_staff => { }
    assert_redirected_to real_staff_path(assigns(:real_staff))
  end

  test "should destroy real_staff" do
    assert_difference('RealStaff.count', -1) do
      delete :destroy, :id => real_staffs(:one).to_param
    end

    assert_redirected_to real_staffs_path
  end
end
