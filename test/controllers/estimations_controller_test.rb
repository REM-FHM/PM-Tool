require 'test_helper'

class EstimationsControllerTest < ActionController::TestCase
  setup do
    @estimation = estimations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:estimations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create estimation" do
    assert_difference('Estimation.count') do
      post :create, estimation: { duration: @estimation.duration, expert_form_id: @estimation.expert_form_id, workpackage_id: @estimation.workpackage_id }
    end

    assert_redirected_to estimation_path(assigns(:estimation))
  end

  test "should show estimation" do
    get :show, id: @estimation
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @estimation
    assert_response :success
  end

  test "should update estimation" do
    patch :update, id: @estimation, estimation: { duration: @estimation.duration, expert_form_id: @estimation.expert_form_id, workpackage_id: @estimation.workpackage_id }
    assert_redirected_to estimation_path(assigns(:estimation))
  end

  test "should destroy estimation" do
    assert_difference('Estimation.count', -1) do
      delete :destroy, id: @estimation
    end

    assert_redirected_to estimations_path
  end
end
