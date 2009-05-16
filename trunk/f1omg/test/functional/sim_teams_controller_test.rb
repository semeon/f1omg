require 'test_helper'

class SimTeamsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sim_teams)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sim_team" do
    assert_difference('SimTeam.count') do
      post :create, :sim_team => { }
    end

    assert_redirected_to sim_team_path(assigns(:sim_team))
  end

  test "should show sim_team" do
    get :show, :id => sim_teams(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => sim_teams(:one).to_param
    assert_response :success
  end

  test "should update sim_team" do
    put :update, :id => sim_teams(:one).to_param, :sim_team => { }
    assert_redirected_to sim_team_path(assigns(:sim_team))
  end

  test "should destroy sim_team" do
    assert_difference('SimTeam.count', -1) do
      delete :destroy, :id => sim_teams(:one).to_param
    end

    assert_redirected_to sim_teams_path
  end
end
