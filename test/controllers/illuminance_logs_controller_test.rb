require 'test_helper'

class IlluminanceLogsControllerTest < ActionController::TestCase
  setup do
    @illuminance_log = illuminance_logs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:illuminance_logs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create illuminance_log" do
    assert_difference('IlluminanceLog.count') do
      post :create, illuminance_log: { date_time: @illuminance_log.date_time, sensor_id: @illuminance_log.sensor_id, value: @illuminance_log.value }
    end

    assert_redirected_to illuminance_log_path(assigns(:illuminance_log))
  end

  test "should show illuminance_log" do
    get :show, id: @illuminance_log
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @illuminance_log
    assert_response :success
  end

  test "should update illuminance_log" do
    patch :update, id: @illuminance_log, illuminance_log: { date_time: @illuminance_log.date_time, sensor_id: @illuminance_log.sensor_id, value: @illuminance_log.value }
    assert_redirected_to illuminance_log_path(assigns(:illuminance_log))
  end

  test "should destroy illuminance_log" do
    assert_difference('IlluminanceLog.count', -1) do
      delete :destroy, id: @illuminance_log
    end

    assert_redirected_to illuminance_logs_path
  end
end
