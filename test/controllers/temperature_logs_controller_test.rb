require 'test_helper'

class TemperatureLogsControllerTest < ActionController::TestCase
  setup do
    @temperature_log = temperature_logs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:temperature_logs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create temperature_log" do
    assert_difference('TemperatureLog.count') do
      post :create, temperature_log: { date_time: @temperature_log.date_time, sensor_id: @temperature_log.sensor_id, value: @temperature_log.value }
    end

    assert_redirected_to temperature_log_path(assigns(:temperature_log))
  end

  test "should show temperature_log" do
    get :show, id: @temperature_log
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @temperature_log
    assert_response :success
  end

  test "should update temperature_log" do
    patch :update, id: @temperature_log, temperature_log: { date_time: @temperature_log.date_time, sensor_id: @temperature_log.sensor_id, value: @temperature_log.value }
    assert_redirected_to temperature_log_path(assigns(:temperature_log))
  end

  test "should destroy temperature_log" do
    assert_difference('TemperatureLog.count', -1) do
      delete :destroy, id: @temperature_log
    end

    assert_redirected_to temperature_logs_path
  end
end
