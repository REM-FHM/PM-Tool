require 'test_helper'

class WorkpackagesControllerTest < ActionController::TestCase
  setup do
    @workpackage = workpackages(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:workpackages)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create workpackage" do
    assert_difference('Workpackage.count') do
      post :create, workpackage: { st_id: @workpackage.st_id, wpName: @workpackage.wpName, wpNumber: @workpackage.wpNumber }
    end

    assert_redirected_to workpackage_path(assigns(:workpackage))
  end

  test "should show workpackage" do
    get :show, id: @workpackage
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @workpackage
    assert_response :success
  end

  test "should update workpackage" do
    patch :update, id: @workpackage, workpackage: { st_id: @workpackage.st_id, wpName: @workpackage.wpName, wpNumber: @workpackage.wpNumber }
    assert_redirected_to workpackage_path(assigns(:workpackage))
  end

  test "should destroy workpackage" do
    assert_difference('Workpackage.count', -1) do
      delete :destroy, id: @workpackage
    end

    assert_redirected_to workpackages_path
  end
end
