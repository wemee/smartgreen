require 'test_helper'

class LeoPlugsControllerTest < ActionController::TestCase
  setup do
    @leo_plug = leo_plugs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:leo_plugs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create leo_plug" do
    assert_difference('LeoPlug.count') do
      post :create, leo_plug: { brand: @leo_plug.brand, mac: @leo_plug.mac, school: @leo_plug.school, voltage: @leo_plug.voltage }
    end

    assert_redirected_to leo_plug_path(assigns(:leo_plug))
  end

  test "should show leo_plug" do
    get :show, id: @leo_plug
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @leo_plug
    assert_response :success
  end

  test "should update leo_plug" do
    patch :update, id: @leo_plug, leo_plug: { brand: @leo_plug.brand, mac: @leo_plug.mac, school: @leo_plug.school, voltage: @leo_plug.voltage }
    assert_redirected_to leo_plug_path(assigns(:leo_plug))
  end

  test "should destroy leo_plug" do
    assert_difference('LeoPlug.count', -1) do
      delete :destroy, id: @leo_plug
    end

    assert_redirected_to leo_plugs_path
  end
end
