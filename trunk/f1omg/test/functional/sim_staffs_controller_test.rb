require 'test_helper'

class SimStaffsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sim_staffs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sim_staff" do
    assert_difference('SimStaff.count') do
      post :create, :sim_staff => { }
    end

    assert_redirected_to sim_staff_path(assigns(:sim_staff))
  end

  test "should show sim_staff" do
    get :show, :id => sim_staffs(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => sim_staffs(:one).to_param
    assert_response :success
  end

  test "should update sim_staff" do
    put :update, :id => sim_staffs(:one).to_param, :sim_staff => { }
    assert_redirected_to sim_staff_path(assigns(:sim_staff))
  end

  test "should destroy sim_staff" do
    assert_difference('SimStaff.count', -1) do
      delete :destroy, :id => sim_staffs(:one).to_param
    end

    assert_redirected_to sim_staffs_path
  end
end
