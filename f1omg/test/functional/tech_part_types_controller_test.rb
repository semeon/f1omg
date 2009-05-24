require 'test_helper'

class TechPartTypesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tech_part_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tech_part_type" do
    assert_difference('TechPartType.count') do
      post :create, :tech_part_type => { }
    end

    assert_redirected_to tech_part_type_path(assigns(:tech_part_type))
  end

  test "should show tech_part_type" do
    get :show, :id => tech_part_types(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => tech_part_types(:one).to_param
    assert_response :success
  end

  test "should update tech_part_type" do
    put :update, :id => tech_part_types(:one).to_param, :tech_part_type => { }
    assert_redirected_to tech_part_type_path(assigns(:tech_part_type))
  end

  test "should destroy tech_part_type" do
    assert_difference('TechPartType.count', -1) do
      delete :destroy, :id => tech_part_types(:one).to_param
    end

    assert_redirected_to tech_part_types_path
  end
end
