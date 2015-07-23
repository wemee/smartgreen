require 'test_helper'

class LeoPlugLogsControllerTest < ActionController::TestCase
  setup do
    @leo_plug_log = leo_plug_logs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:leo_plug_logs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create leo_plug_log" do
    assert_difference('LeoPlugLog.count') do
      post :create, leo_plug_log: { amp: @leo_plug_log.amp, date_time: @leo_plug_log.date_time, device: @leo_plug_log.device, energy: @leo_plug_log.energy, outlet_id: @leo_plug_log.outlet_id, power: @leo_plug_log.power, power_on_off: @leo_plug_log.power_on_off, reactive_power: @leo_plug_log.reactive_power, sensor_id: @leo_plug_log.sensor_id, standby_watt: @leo_plug_log.standby_watt, voltage: @leo_plug_log.voltage }
    end

    assert_redirected_to leo_plug_log_path(assigns(:leo_plug_log))
  end

  test "should show leo_plug_log" do
    get :show, id: @leo_plug_log
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @leo_plug_log
    assert_response :success
  end

  test "should update leo_plug_log" do
    patch :update, id: @leo_plug_log, leo_plug_log: { amp: @leo_plug_log.amp, date_time: @leo_plug_log.date_time, device: @leo_plug_log.device, energy: @leo_plug_log.energy, outlet_id: @leo_plug_log.outlet_id, power: @leo_plug_log.power, power_on_off: @leo_plug_log.power_on_off, reactive_power: @leo_plug_log.reactive_power, sensor_id: @leo_plug_log.sensor_id, standby_watt: @leo_plug_log.standby_watt, voltage: @leo_plug_log.voltage }
    assert_redirected_to leo_plug_log_path(assigns(:leo_plug_log))
  end

  test "should destroy leo_plug_log" do
    assert_difference('LeoPlugLog.count', -1) do
      delete :destroy, id: @leo_plug_log
    end

    assert_redirected_to leo_plug_logs_path
  end
end
