require 'test_helper'

class ResourceBreakdownStructuresControllerTest < ActionController::TestCase
  setup do
    @resource_breakdown_structure = resource_breakdown_structures(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:resource_breakdown_structures)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create resource_breakdown_structure" do
    assert_difference('ResourceBreakdownStructure.count') do
      post :create, resource_breakdown_structure: { p_id: @resource_breakdown_structure.p_id }
    end

    assert_redirected_to resource_breakdown_structure_path(assigns(:resource_breakdown_structure))
  end

  test "should show resource_breakdown_structure" do
    get :show, id: @resource_breakdown_structure
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @resource_breakdown_structure
    assert_response :success
  end

  test "should update resource_breakdown_structure" do
    patch :update, id: @resource_breakdown_structure, resource_breakdown_structure: { p_id: @resource_breakdown_structure.p_id }
    assert_redirected_to resource_breakdown_structure_path(assigns(:resource_breakdown_structure))
  end

  test "should destroy resource_breakdown_structure" do
    assert_difference('ResourceBreakdownStructure.count', -1) do
      delete :destroy, id: @resource_breakdown_structure
    end

    assert_redirected_to resource_breakdown_structures_path
  end
end
