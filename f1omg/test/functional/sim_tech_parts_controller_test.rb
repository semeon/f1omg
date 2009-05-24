require 'test_helper'

class SimTechPartsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sim_tech_parts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sim_tech_part" do
    assert_difference('SimTechPart.count') do
      post :create, :sim_tech_part => { }
    end

    assert_redirected_to sim_tech_part_path(assigns(:sim_tech_part))
  end

  test "should show sim_tech_part" do
    get :show, :id => sim_tech_parts(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => sim_tech_parts(:one).to_param
    assert_response :success
  end

  test "should update sim_tech_part" do
    put :update, :id => sim_tech_parts(:one).to_param, :sim_tech_part => { }
    assert_redirected_to sim_tech_part_path(assigns(:sim_tech_part))
  end

  test "should destroy sim_tech_part" do
    assert_difference('SimTechPart.count', -1) do
      delete :destroy, :id => sim_tech_parts(:one).to_param
    end

    assert_redirected_to sim_tech_parts_path
  end
end
