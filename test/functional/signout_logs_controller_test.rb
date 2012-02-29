require 'test_helper'

class SignoutLogsControllerTest < ActionController::TestCase
  setup do
    @signout_log = signout_logs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:signout_logs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create signout_log" do
    assert_difference('SignoutLog.count') do
      post :create, :signout_log => @signout_log.attributes
    end

    assert_redirected_to signout_log_path(assigns(:signout_log))
  end

  test "should show signout_log" do
    get :show, :id => @signout_log
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @signout_log
    assert_response :success
  end

  test "should update signout_log" do
    put :update, :id => @signout_log, :signout_log => @signout_log.attributes
    assert_redirected_to signout_log_path(assigns(:signout_log))
  end

  test "should destroy signout_log" do
    assert_difference('SignoutLog.count', -1) do
      delete :destroy, :id => @signout_log
    end

    assert_redirected_to signout_logs_path
  end
end
