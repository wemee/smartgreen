require 'test_helper'

class HumidityLogsControllerTest < ActionController::TestCase
  setup do
    @humidity_log = humidity_logs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:humidity_logs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create humidity_log" do
    assert_difference('HumidityLog.count') do
      post :create, humidity_log: { date_time: @humidity_log.date_time, sensor_id: @humidity_log.sensor_id, value: @humidity_log.value }
    end

    assert_redirected_to humidity_log_path(assigns(:humidity_log))
  end

  test "should show humidity_log" do
    get :show, id: @humidity_log
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @humidity_log
    assert_response :success
  end

  test "should update humidity_log" do
    patch :update, id: @humidity_log, humidity_log: { date_time: @humidity_log.date_time, sensor_id: @humidity_log.sensor_id, value: @humidity_log.value }
    assert_redirected_to humidity_log_path(assigns(:humidity_log))
  end

  test "should destroy humidity_log" do
    assert_difference('HumidityLog.count', -1) do
      delete :destroy, id: @humidity_log
    end

    assert_redirected_to humidity_logs_path
  end
end
