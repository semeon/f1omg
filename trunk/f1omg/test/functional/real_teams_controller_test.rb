require 'test_helper'

class RealTeamsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:real_teams)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create real_team" do
    assert_difference('RealTeam.count') do
      post :create, :real_team => { }
    end

    assert_redirected_to real_team_path(assigns(:real_team))
  end

  test "should show real_team" do
    get :show, :id => real_teams(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => real_teams(:one).to_param
    assert_response :success
  end

  test "should update real_team" do
    put :update, :id => real_teams(:one).to_param, :real_team => { }
    assert_redirected_to real_team_path(assigns(:real_team))
  end

  test "should destroy real_team" do
    assert_difference('RealTeam.count', -1) do
      delete :destroy, :id => real_teams(:one).to_param
    end

    assert_redirected_to real_teams_path
  end
end
