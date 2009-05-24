require 'test_helper'

class RealTechPartsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:real_tech_parts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create real_tech_part" do
    assert_difference('RealTechPart.count') do
      post :create, :real_tech_part => { }
    end

    assert_redirected_to real_tech_part_path(assigns(:real_tech_part))
  end

  test "should show real_tech_part" do
    get :show, :id => real_tech_parts(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => real_tech_parts(:one).to_param
    assert_response :success
  end

  test "should update real_tech_part" do
    put :update, :id => real_tech_parts(:one).to_param, :real_tech_part => { }
    assert_redirected_to real_tech_part_path(assigns(:real_tech_part))
  end

  test "should destroy real_tech_part" do
    assert_difference('RealTechPart.count', -1) do
      delete :destroy, :id => real_tech_parts(:one).to_param
    end

    assert_redirected_to real_tech_parts_path
  end
end
