require 'test_helper'

class DoingsControllerTest < ActionController::TestCase
  setup do
    @doing = doings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:doings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create doing" do
    assert_difference('Doing.count') do
      post :create, :doing => @doing.attributes
    end

    assert_redirected_to doing_path(assigns(:doing))
  end

  test "should show doing" do
    get :show, :id => @doing.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @doing.to_param
    assert_response :success
  end

  test "should update doing" do
    put :update, :id => @doing.to_param, :doing => @doing.attributes
    assert_redirected_to doing_path(assigns(:doing))
  end

  test "should destroy doing" do
    assert_difference('Doing.count', -1) do
      delete :destroy, :id => @doing.to_param
    end

    assert_redirected_to doings_path
  end
end
