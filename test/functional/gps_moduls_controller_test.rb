require 'test_helper'

class GpsModulsControllerTest < ActionController::TestCase
  setup do
    @gps_modul = gps_moduls(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:gps_moduls)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create gps_modul" do
    assert_difference('GpsModul.count') do
      post :create, :gps_modul => @gps_modul.attributes
    end

    assert_redirected_to gps_modul_path(assigns(:gps_modul))
  end

  test "should show gps_modul" do
    get :show, :id => @gps_modul.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @gps_modul.to_param
    assert_response :success
  end

  test "should update gps_modul" do
    put :update, :id => @gps_modul.to_param, :gps_modul => @gps_modul.attributes
    assert_redirected_to gps_modul_path(assigns(:gps_modul))
  end

  test "should destroy gps_modul" do
    assert_difference('GpsModul.count', -1) do
      delete :destroy, :id => @gps_modul.to_param
    end

    assert_redirected_to gps_moduls_path
  end
end
