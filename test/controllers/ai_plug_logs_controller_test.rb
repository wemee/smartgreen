require 'test_helper'

class AiPlugLogsControllerTest < ActionController::TestCase
  setup do
    @ai_plug_log = ai_plug_logs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ai_plug_logs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ai_plug_log" do
    assert_difference('AiPlugLog.count') do
      post :create, ai_plug_log: { attrid_val: @ai_plug_log.attrid_val, date_time: @ai_plug_log.date_time, device: @ai_plug_log.device, install_time: @ai_plug_log.install_time, outlet_id: @ai_plug_log.outlet_id, sensor_id: @ai_plug_log.sensor_id, standby_watt: @ai_plug_log.standby_watt, user_name: @ai_plug_log.user_name }
    end

    assert_redirected_to ai_plug_log_path(assigns(:ai_plug_log))
  end

  test "should show ai_plug_log" do
    get :show, id: @ai_plug_log
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ai_plug_log
    assert_response :success
  end

  test "should update ai_plug_log" do
    patch :update, id: @ai_plug_log, ai_plug_log: { attrid_val: @ai_plug_log.attrid_val, date_time: @ai_plug_log.date_time, device: @ai_plug_log.device, install_time: @ai_plug_log.install_time, outlet_id: @ai_plug_log.outlet_id, sensor_id: @ai_plug_log.sensor_id, standby_watt: @ai_plug_log.standby_watt, user_name: @ai_plug_log.user_name }
    assert_redirected_to ai_plug_log_path(assigns(:ai_plug_log))
  end

  test "should destroy ai_plug_log" do
    assert_difference('AiPlugLog.count', -1) do
      delete :destroy, id: @ai_plug_log
    end

    assert_redirected_to ai_plug_logs_path
  end
end
