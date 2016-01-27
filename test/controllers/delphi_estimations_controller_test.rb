require 'test_helper'

class DelphiEstimationsControllerTest < ActionController::TestCase
  setup do
    @delphi_estimation = delphi_estimations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:delphi_estimations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create delphi_estimation" do
    assert_difference('DelphiEstimation.count') do
      post :create, delphi_estimation: { p_id: @delphi_estimation.p_id }
    end

    assert_redirected_to delphi_estimation_path(assigns(:delphi_estimation))
  end

  test "should show delphi_estimation" do
    get :show, id: @delphi_estimation
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @delphi_estimation
    assert_response :success
  end

  test "should update delphi_estimation" do
    patch :update, id: @delphi_estimation, delphi_estimation: { p_id: @delphi_estimation.p_id }
    assert_redirected_to delphi_estimation_path(assigns(:delphi_estimation))
  end

  test "should destroy delphi_estimation" do
    assert_difference('DelphiEstimation.count', -1) do
      delete :destroy, id: @delphi_estimation
    end

    assert_redirected_to delphi_estimations_path
  end
end
