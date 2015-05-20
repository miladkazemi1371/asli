require 'test_helper'

class PerformedsControllerTest < ActionController::TestCase
  setup do
    @performed = performeds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:performeds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create performed" do
    assert_difference('Performed.count') do
      post :create, performed: { device_id: @performed.device_id, work_id: @performed.work_id }
    end

    assert_redirected_to performed_path(assigns(:performed))
  end

  test "should show performed" do
    get :show, id: @performed
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @performed
    assert_response :success
  end

  test "should update performed" do
    patch :update, id: @performed, performed: { device_id: @performed.device_id, work_id: @performed.work_id }
    assert_redirected_to performed_path(assigns(:performed))
  end

  test "should destroy performed" do
    assert_difference('Performed.count', -1) do
      delete :destroy, id: @performed
    end

    assert_redirected_to performeds_path
  end
end
