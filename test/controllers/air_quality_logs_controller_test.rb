require 'test_helper'

class AirQualityLogsControllerTest < ActionController::TestCase
  setup do
    @air_quality_log = air_quality_logs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:air_quality_logs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create air_quality_log" do
    assert_difference('AirQualityLog.count') do
      post :create, air_quality_log: { date_time: @air_quality_log.date_time, sensor_id: @air_quality_log.sensor_id, value: @air_quality_log.value }
    end

    assert_redirected_to air_quality_log_path(assigns(:air_quality_log))
  end

  test "should show air_quality_log" do
    get :show, id: @air_quality_log
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @air_quality_log
    assert_response :success
  end

  test "should update air_quality_log" do
    patch :update, id: @air_quality_log, air_quality_log: { date_time: @air_quality_log.date_time, sensor_id: @air_quality_log.sensor_id, value: @air_quality_log.value }
    assert_redirected_to air_quality_log_path(assigns(:air_quality_log))
  end

  test "should destroy air_quality_log" do
    assert_difference('AirQualityLog.count', -1) do
      delete :destroy, id: @air_quality_log
    end

    assert_redirected_to air_quality_logs_path
  end
end
